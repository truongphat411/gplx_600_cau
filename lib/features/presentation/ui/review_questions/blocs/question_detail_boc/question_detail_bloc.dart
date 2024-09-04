import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';
import 'package:gplx_600_cau/features/domain/use_cases/zquestion_use_case.dart/zquestion_use_case.dart';
import 'package:injectable/injectable.dart';

part 'question_detail_bloc.freezed.dart';
part 'question_detail_event.dart';
part 'question_detail_state.dart';

@injectable
class QuestionDetailBloc
    extends Bloc<QuestionDetailEvent, QuestionDetailState> {
  final ZQuestionUseCase zQuestionUseCase;
  QuestionDetailBloc(this.zQuestionUseCase)
      : super(const QuestionDetailState.initial()) {
    on<QuestionDetailEventToggleAnswer>(_toggleAnswer);
  }
  void _toggleAnswer(QuestionDetailEventToggleAnswer event,
      Emitter<QuestionDetailState> emit) async {
    await zQuestionUseCase.updateQuestion(event.question);
    emit(
      QuestionDetailState.answerVisibility(
        isAnswerVisible: event.isCorrectAnswer,
      ),
    );
  }
}
