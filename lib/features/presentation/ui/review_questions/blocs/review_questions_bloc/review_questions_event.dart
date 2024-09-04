part of 'review_questions_bloc.dart';

@freezed
class ReviewQuestionsEvent with _$ReviewQuestionsEvent {
  const factory ReviewQuestionsEvent.getAllQuestions() =
      ReviewQuestionsEventGetAllQuestions;
  const factory ReviewQuestionsEvent.getTop60CriticalQuestions() =
      ReviewQuestionsEventGetTop60CriticalQuestions;
}
