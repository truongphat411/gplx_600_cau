part of 'questions_action_bloc.dart';

@freezed
class QuestionsActionEvent with _$QuestionsActionEvent {
  const factory QuestionsActionEvent.nextPage() =
      QuestionsActionEventNextPage;
  const factory QuestionsActionEvent.previousPage() =
      QuestionsActionEventPreviousPage;
  const factory QuestionsActionEvent.JumpPage(int numberPage) =
      QuestionsActionEventJumpPage;
}
