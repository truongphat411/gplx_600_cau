import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';
import 'package:gplx_600_cau/features/domain/repositories/zquestion_repository/zquestion_repository.dart';
import 'package:injectable/injectable.dart';

part 'review_questions_bloc.freezed.dart';
part 'review_questions_event.dart';
part 'review_questions_state.dart';

@injectable
class ReviewQuestionsBloc
    extends Bloc<ReviewQuestionsEvent, ReviewQuestionsState> {
  ZQuestionRepository zQuestionRepository;
  ReviewQuestionsBloc(this.zQuestionRepository)
      : super(const ReviewQuestionsState.initial()) {
    on<ReviewQuestionsEvent>((event, emit) async {
      await event.map(
        getAllQuestions: (value) async {
          emit(const ReviewQuestionsState.loading());
          final result = await zQuestionRepository.getAllQuestions();
          result.fold(
            (l) => null,
            (r) => emit(
              ReviewQuestionsState.data(zQuestions: r),
            ),
          );
        },
        getTop60CriticalQuestions:
            (ReviewQuestionsEventGetTop60CriticalQuestions value) async {
          emit(const ReviewQuestionsState.loading());
          final result = await zQuestionRepository.getTop60CriticalQuestions();
          result.fold(
            (l) => null,
            (r) => emit(
              ReviewQuestionsState.data(zQuestions: r),
            ),
          );
        },
      );
    });
  }
}
