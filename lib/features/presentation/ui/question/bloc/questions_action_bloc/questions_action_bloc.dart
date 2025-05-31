import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/domain/use_cases/question_use_case.dart/question_use_case.dart';
import 'package:injectable/injectable.dart';

part 'questions_action_bloc.freezed.dart';
part 'questions_action_event.dart';
part 'questions_action_state.dart';

@injectable
class QuestionsActionBloc
    extends Bloc<QuestionsActionEvent, QuestionsActionState> {
  final QuestionUseCase zQuestionUseCase;
  QuestionsActionBloc(this.zQuestionUseCase)
      : super(const QuestionsActionState.initial(0)) {
    on<QuestionsActionEvent>(
      (event, emit) async {
        event.when(
          nextPage: () {
            final currentPage = state.currentPage;
            emit(
              QuestionsActionState.pageChanged(currentPage + 1),
            );
          },
          previousPage: () {
            final currentPage = state.currentPage;
            emit(
              QuestionsActionState.pageChanged(currentPage - 1),
            );
          },
          JumpPage: (numberPage) {
            emit(
              QuestionsActionState.pageChanged(numberPage),
            );
          },
        );
      },
    );
  }
}
