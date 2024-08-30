part of 'review_questions_action_bloc.dart';

@freezed
class ReviewQuestionsActionEvent with _$ReviewQuestionsActionEvent {
  const factory ReviewQuestionsActionEvent.nextPage() =
      ReviewQuestionsActionEventNextPage;
  const factory ReviewQuestionsActionEvent.previousPage() =
      ReviewQuestionsActionEventPreviousPage;
  const factory ReviewQuestionsActionEvent.JumpPage(int numberPage) =
      ReviewQuestionsActionEventJumpPage;
  const factory ReviewQuestionsActionEvent.toggleAnswer(bool isCorrectAnswer) =
      ReviewQuestionsActionEventToggleAnswer;
}
