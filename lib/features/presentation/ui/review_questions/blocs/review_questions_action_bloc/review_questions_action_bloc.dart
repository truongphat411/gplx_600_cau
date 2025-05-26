import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/data/models/question/question.dart';
import 'package:gplx_600_cau/features/domain/use_cases/question_use_case.dart/question_use_case.dart';
import 'package:injectable/injectable.dart';

part 'review_questions_action_bloc.freezed.dart';
part 'review_questions_action_event.dart';
part 'review_questions_action_state.dart';

@injectable
class ReviewQuestionsActionBloc
    extends Bloc<ReviewQuestionsActionEvent, ReviewQuestionsActionState> {
  final QuestionUseCase zQuestionUseCase;
  ReviewQuestionsActionBloc(this.zQuestionUseCase)
      : super(const ReviewQuestionsActionState.initial(0)) {
    on<ReviewQuestionsActionEventNextPage>(_onNextPage);
    on<ReviewQuestionsActionEventPreviousPage>(_onPreviousPage);
    on<ReviewQuestionsActionEventJumpPage>(_onJumpToPage);
  }
  void _onNextPage(ReviewQuestionsActionEventNextPage event,
      Emitter<ReviewQuestionsActionState> emit) {
    final currentPage = state.maybeWhen(
      pageChanged: (page) => page,
      orElse: () => 0,
    );
    emit(
      ReviewQuestionsActionState.pageChanged(currentPage + 1),
    );
  }

  void _onPreviousPage(
    ReviewQuestionsActionEventPreviousPage event,
    Emitter<ReviewQuestionsActionState> emit,
  ) {
    final currentPage = state.maybeWhen(
      pageChanged: (page) => page,
      orElse: () => 0,
    );
    emit(
      ReviewQuestionsActionState.pageChanged(currentPage - 1),
    );
  }

  void _onJumpToPage(ReviewQuestionsActionEventJumpPage event,
      Emitter<ReviewQuestionsActionState> emit) {
    emit(
      ReviewQuestionsActionState.pageChanged(event.numberPage),
    );
  }
}
