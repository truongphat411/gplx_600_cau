part of 'question_detail_bloc.dart';

@freezed
class QuestionDetailState with _$QuestionDetailState {
  const factory QuestionDetailState.initial() = QuestionDetailStateInitial;
  const factory QuestionDetailState.answerVisibility({
    @Default(false) bool isAnswerVisible,
  }) = QuestionDetailStateAnswerVisibility;
}
