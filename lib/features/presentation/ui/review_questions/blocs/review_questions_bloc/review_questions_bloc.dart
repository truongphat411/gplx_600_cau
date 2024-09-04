import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';
import 'package:gplx_600_cau/features/domain/use_cases/zquestion_use_case.dart/zquestion_use_case.dart';
import 'package:injectable/injectable.dart';

part 'review_questions_bloc.freezed.dart';
part 'review_questions_event.dart';
part 'review_questions_state.dart';

@injectable
class ReviewQuestionsBloc
    extends Bloc<ReviewQuestionsEvent, ReviewQuestionsState> {
  ZQuestionUseCase zQuestionUseCase;
  ReviewQuestionsBloc(this.zQuestionUseCase)
      : super(const ReviewQuestionsState.initial()) {
    on<ReviewQuestionsEventGetAllQuestions>(_getAllQuestions);
    on<ReviewQuestionsEventGetTop60CriticalQuestions>(
        _getTop60CriticalQuestions);
  }

  Future<void> _getAllQuestions(
    ReviewQuestionsEventGetAllQuestions event,
    Emitter<ReviewQuestionsState> emit,
  ) async {
    emit(const ReviewQuestionsState.loading());
    final result = await zQuestionUseCase.getAllQuestions();
    result.fold(
      (l) => null,
      (r) => emit(
        ReviewQuestionsState.data(zQuestions: r),
      ),
    );
  }

  Future<void> _getTop60CriticalQuestions(
    ReviewQuestionsEventGetTop60CriticalQuestions event,
    Emitter<ReviewQuestionsState> emit,
  ) async {
    emit(const ReviewQuestionsState.loading());
    final result = await zQuestionUseCase.getTop60CriticalQuestions();
    result.fold(
      (l) => null,
      (r) => emit(
        ReviewQuestionsState.data(zQuestions: r),
      ),
    );
  }
}
