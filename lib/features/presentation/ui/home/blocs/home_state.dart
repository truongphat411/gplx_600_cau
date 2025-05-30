part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeStateInItal;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.failure(Exception error) = HomeStateFailure;
  const factory HomeState.data({
    String? licenseName,
    @Default([]) List<Question> questions,
    @Default([]) List<QuestionType> questionTypes,
    @Default([]) List<License> licenses,
    @Default([]) List<Test> tests,
    @Default([]) List<TestQuest> testQuests,
  }) = HomeStateData;
}

extension HomeStateX on HomeState {
  HomeStateData? get stateData =>
      (this is HomeStateData) ? this as HomeStateData : null;
  String? get licenseName => stateData?.licenseName;
  List<Question> get questions => stateData?.questions ?? [];
  List<QuestionType> get questionTypes => stateData?.questionTypes ?? [];
  List<License> get licenses => stateData?.licenses ?? [];
  List<Test> get tests => stateData?.tests ?? [];
  List<TestQuest> get testQuests => stateData?.testQuests ?? [];
}
