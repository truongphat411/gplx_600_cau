part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.insertData() = HomeEventInsertData;

  const factory HomeEvent.loading() = HomeEventLoading;

  const factory HomeEvent.failure(Exception error) = HomeEventFailure;

  const factory HomeEvent.data({
    required String licenseName,
    @Default([]) List<Question> questions,
    @Default([]) List<QuestionType> questionTypes,
    @Default([]) List<License> licenses,
    @Default([]) List<Test> tests,
    @Default([]) List<TestQuest> testQuests,
  }) = HomeEventData;

  const factory HomeEvent.updateQuestion({
    required Question question,
  }) = HomeEventUpdateQuestion;

  const factory HomeEvent.updateLicense({
    required String licenseName,
  }) = HomeEventUpdateLicense;
}
