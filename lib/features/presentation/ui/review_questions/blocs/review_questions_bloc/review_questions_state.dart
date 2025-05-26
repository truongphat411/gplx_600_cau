part of 'review_questions_bloc.dart';

@freezed
class ReviewQuestionsState with _$ReviewQuestionsState {
  const factory ReviewQuestionsState.initial() = ReviewQuestionsStateInItal;
  const factory ReviewQuestionsState.loading() = ReviewQuestionsStateLoading;
  const factory ReviewQuestionsState.data({
    required List<Question> zQuestions,
  }) = ReviewQuestionsStateData;
  const factory ReviewQuestionsState.failure({required Exception error}) =
      ReviewQuestionsStateFailure;
}
