import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
    on<HomeEventInsertData>(((event, emit) async {
      await event.map(
        insertData: (value) async {
          emit(const HomeState.loading());

          final result = await Future.wait([
            licenseUseCase.insertLicenses(),
            questionUseCase.insertQuestions(),
            questionTypeUseCase.insertQuestionTypes(),
            tableNoticeBoardUseCase.insertTableNoticeBoards(),
            tableNoticeBoardTypeUseCase.insertTableNoticeBoardTypes(),
            testUseCase.insertTests(),
            testQuestUseCase.insertTestQuests(),
          ]);
          final hasError = result.any((either) => either.isLeft());
          if (hasError) {
            return;
          }
          emit(const HomeState.data());
        },
      );
    }));
  }

  final LicenseUseCase licenseUseCase;
  final QuestionUseCase questionUseCase;
  final QuestionTypeUseCase questionTypeUseCase;
  final TableNoticeBoardUseCase tableNoticeBoardUseCase;
  final TableNoticeBoardTypeUseCase tableNoticeBoardTypeUseCase;
  final TestUseCase testUseCase;
  final TestQuestUseCase testQuestUseCase;
}
