part of 'question_detail_bloc.dart';

@freezed
class QuestionDetailEvent with _$QuestionDetailEvent {
  const factory QuestionDetailEvent.toggleAnswer(
          ZQuestion question, bool isCorrectAnswer) =
      QuestionDetailEventToggleAnswer;
}
