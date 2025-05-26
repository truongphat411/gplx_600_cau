part of 'review_questions_bloc.dart';

@freezed
class ReviewQuestionsEvent with _$ReviewQuestionsEvent {
  const factory ReviewQuestionsEvent.getAllQuestions() =
      ReviewQuestionsEventGetAllQuestions;
  const factory ReviewQuestionsEvent.getTop60CriticalQuestions() =
      ReviewQuestionsEventGetTop60CriticalQuestions;
  const factory ReviewQuestionsEvent.getQuestionsByType({
    required int questionType,
  }) = ReviewQuestionsEventGetQuestionsByType;
  const factory ReviewQuestionsEvent.getFrequentMistakes() =
      ReviewQuestionsEventGetFrequentMistakes;
  const factory ReviewQuestionsEvent.getSavedQuestions() =
      ReviewQuestionsEventGetSavedQuestions;
  const factory ReviewQuestionsEvent.updateQuestion(
    Question question,
  ) = ReviewQuestionsEventUpdateQuestion;
}
