part of 'questions_action_bloc.dart';

@freezed
class QuestionsActionState with _$QuestionsActionState {
  const factory QuestionsActionState.initial(int currentPage) =
      QuestionsActionStateInitial;
  const factory QuestionsActionState.pageChanged(int currentPage) =
      QuestionsActionStatePageChanged;
}

extension ReviewQuestionsActionStateX on QuestionsActionState {
  QuestionsActionStatePageChanged? get statePageChanged =>
      (this is QuestionsActionStatePageChanged)
          ? this as QuestionsActionStatePageChanged
          : null;
  int get currentPage => statePageChanged?.currentPage ?? 0;
}
