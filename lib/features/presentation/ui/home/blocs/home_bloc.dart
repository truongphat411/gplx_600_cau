import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/core/extension/extension.dart';
import 'package:gplx_600_cau/features/data/models/models.dart';
import 'package:injectable/injectable.dart';
import '../../../../data/data_sources/local/local.dart';
import '../../../../domain/use_cases/use_cases.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this.licenseUseCase,
    this.questionUseCase,
    this.questionTypeUseCase,
    this.tableNoticeBoardUseCase,
    this.tableNoticeBoardTypeUseCase,
    this.testUseCase,
    this.testQuestUseCase,
  ) : super(const HomeState.initial()) {
    on<HomeEvent>(((event, emit) async {
      await event.when(
        insertData: () async {
          if (SharedPreferencesStorage.getIsDataInserted()) {
            await getAllData();
            return;
          }

          emit(const HomeState.loading());

          final results = await Future.wait([
            licenseUseCase.insertLicenses(),
            questionUseCase.insertQuestions(),
            questionTypeUseCase.insertQuestionTypes(),
            tableNoticeBoardUseCase.insertTableNoticeBoards(),
            tableNoticeBoardTypeUseCase.insertTableNoticeBoardTypes(),
            testUseCase.insertTests(),
            testQuestUseCase.insertTestQuests(),
          ]);

          if (results.any((either) => either.isLeft())) {
            emit(HomeState.failure(Exception('Failed to insert initial data')));
            return;
          }

          SharedPreferencesStorage.setIsDataInserted(value: true);
          await getAllData();
        },
        updateQuestion: (question) async {
          if (state is! HomeStateData) return;

          await questionUseCase.updateQuestion(question);
          emit(state.stateData!.copyWith(
            questions: (state as HomeStateData)
                .questions
                .map(
                  (q) => q.Z_PK == question.Z_PK ? question : q,
                )
                .toList(),
          ));
        },
        loading: () async => emit(const HomeState.loading()),
        data: (
          licenseName,
          questions,
          questionTypes,
          licenses,
          tests,
          testQuests,
        ) async =>
            emit(
          HomeState.data(
            licenseName: licenseName,
            questions: questions,
            questionTypes: questionTypes,
            licenses: licenses,
            tests: tests,
            testQuests: testQuests,
          ),
        ),
        failure: (error) async => emit(HomeState.failure(error)),
        updateLicense: (licenseName) async {
          if (state is! HomeStateData) return;
          SharedPreferencesStorage.setLicenseSelected(value: licenseName);
          final result1 = await getQuestions();
          final result2 = await getTests();
          final result3 = await getTestQuests();
          if (result1 == null || result2 == null || result3 == null) {
            return;
          }
          emit(
            state.stateData!.copyWith(
              licenseName: licenseName,
              questions: result1,
              tests: result2,
              testQuests: result3,
            ),
          );
        },
      );
    }));
  }

  Future<void> getAllData({String? licenseName}) async {
    final licenseSelected =
        licenseName ?? SharedPreferencesStorage.getLicenseSelected();
    add(const HomeEvent.loading());
    final result1 = await getQuestions();
    final result2 = await getQuestionTypes();
    final result3 = await getLicenses();
    final result4 = await getTests();
    final result5 = await getTestQuests();
    if (result1 == null ||
        result2 == null ||
        result3 == null ||
        result4 == null ||
        result5 == null) {
      add(HomeEvent.failure(Exception('Failed to fetch data')));
      return;
    }
    add(
      HomeEvent.data(
        licenseName: licenseSelected,
        questions: result1,
        questionTypes: result2,
        licenses: result3,
        tests: result4,
        testQuests: result5,
      ),
    );
  }

  Future<List<Question>?> getQuestions() async {
    final result = await questionUseCase.getQuestions();
    return result.fold(
      (failure) => null,
      (questions) => questions,
    );
  }

  Future<List<QuestionType>?> getQuestionTypes() async {
    final result = await questionTypeUseCase.getQuestionTypes();
    return result.fold(
      (failure) => null,
      (questionTypes) {
        return questionTypes;
      },
    );
  }

  Future<List<License>?> getLicenses() async {
    final result = await licenseUseCase.getAllLicenses();
    return result.fold(
      (failure) => null,
      (licenses) {
        return licenses;
      },
    );
  }

  Future<List<Test>?> getTests() async {
    final result = await testUseCase.getTests();
    return result.fold(
      (failure) => null,
      (tests) {
        return tests;
      },
    );
  }

  Future<List<TestQuest>?> getTestQuests() async {
    final result = await testQuestUseCase.getTestQuests();
    return result.fold(
      (failure) => null,
      (testQuests) {
        return testQuests;
      },
    );
  }

  List<Question> getTop60CriticalQuestions({
    required List<Question> quesitons,
  }) {
    final top60CriticalQuestions = quesitons
        .where(
          (question) => question.ZQUESTIONDIE == '1',
        )
        .toList();
    return top60CriticalQuestions;
  }

  List<Question> getQuestionsByType({
    required List<Question> quesitons,
    required int questionType,
  }) {
    final questionsByType = quesitons
        .where(
          (question) => question.ZQUESTIONTYPE == questionType,
        )
        .toList();
    return questionsByType;
  }

  List<Question> getSavedQuestions({
    required List<Question> questions,
  }) {
    final savedQuestions = questions
        .where(
          (question) => question.ZMARKED == 1,
        )
        .toList();
    return savedQuestions;
  }

  List<Question> getFrequentMistakes({
    required List<Question> questions,
  }) {
    final savedQuestions = questions
        .where(
          (question) => question.ZWRONG != 0,
        )
        .toList();
    return savedQuestions;
  }

  List<Question> getQuestionsByTest({
    required List<Question> questions,
    required List<TestQuest> testQuests,
    required int testID,
  }) {
    final filteredTestQuests = testQuests
        .where(
          (tq) => tq.TESTID == testID,
        )
        .toList();
    final idsInQuestions = filteredTestQuests
        .map((q) => q.ZQUESTIONID)
        .where((id) => id != null)
        .toSet();
    final filteredQuestions =
        questions.where((qt) => idsInQuestions.contains(qt.Z_PK)).toList();
    return filteredQuestions;
  }

  List<QuestionType> filter({
    required List<QuestionType> questionTypes,
    required List<Question> questions,
  }) {
    final Set<int?> typeIdsInQuestions =
        questions.map((q) => q.ZQUESTIONTYPE).where((id) => id != null).toSet();

    final List<QuestionType> filteredQuestionTypes = questionTypes
        .where((qt) => typeIdsInQuestions.contains(qt.Z_PK))
        .toList();
    return filteredQuestionTypes;
  }

  int countQuestionsByType({
    required List<Question> questions,
    required int typeID,
  }) {
    return questions.where((q) => q.ZQUESTIONTYPE == typeID).length;
  }

  int countQuestionDie({
    required List<Question> questions,
    required String licenseName,
  }) {
    final groupColumn = licenseName.toQuestionGroupColumn;
    return questions.where((q) {
      if (groupColumn == 'INGROUP_A1' || groupColumn == 'INGROUP_A') {
        return q.DIGROUPA1 == '1' && q.ZQUESTIONDIE == '1';
      } else if (groupColumn == 'INGROUP_B1') {
        return q.DIGROUPB1 == '1' && q.ZQUESTIONDIE == '1';
      }
      return q.ZQUESTIONDIE == '1';
    }).length;
  }

  int progressLearned({
    required List<Question> questions,
    int? typeID,
    bool isQuestionDie = false,
  }) {
    return questions.where((q) {
      if (q.ZLEARNED == 0) return false;

      if (isQuestionDie) {
        return q.ZQUESTIONDIE == '1';
      }

      if (typeID == null) return true;

      return q.ZQUESTIONTYPE == typeID;
    }).length;
  }

  int numberOfQuestion({
    required List<License> licenses,
    String? licenseName,
  }) {
    return licenses
            .where((l) => l.ZNAME == licenseName)
            .first
            .ZNUMBEROFQUESTION ??
        0;
  }

  final LicenseUseCase licenseUseCase;
  final QuestionUseCase questionUseCase;
  final QuestionTypeUseCase questionTypeUseCase;
  final TableNoticeBoardUseCase tableNoticeBoardUseCase;
  final TableNoticeBoardTypeUseCase tableNoticeBoardTypeUseCase;
  final TestUseCase testUseCase;
  final TestQuestUseCase testQuestUseCase;
}
