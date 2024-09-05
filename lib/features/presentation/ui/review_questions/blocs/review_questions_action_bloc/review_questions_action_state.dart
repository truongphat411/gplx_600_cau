part of 'review_questions_action_bloc.dart';

@freezed
class ReviewQuestionsActionState with _$ReviewQuestionsActionState {
  const factory ReviewQuestionsActionState.initial(int currentPage) =
      ReviewQuestionsActionStateInitial;
  const factory ReviewQuestionsActionState.pageChanged(int currentPage) =
      ReviewQuestionsActionStatePageChanged;
}
