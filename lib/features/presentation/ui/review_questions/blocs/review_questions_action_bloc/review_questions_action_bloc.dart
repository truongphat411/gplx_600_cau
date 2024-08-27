import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'review_questions_action_bloc.freezed.dart';
part 'review_questions_action_event.dart';
part 'review_questions_action_state.dart';

@injectable
class ReviewQuestionsActionBloc
    extends Bloc<ReviewQuestionsActionEvent, ReviewQuestionsActionState> {
  ReviewQuestionsActionBloc()
      : super(const ReviewQuestionsActionState.initial(0)) {
    on<ReviewQuestionsActionEventNextPage>(_onNextPage);
    on<ReviewQuestionsActionEventPreviousPage>(_onPreviousPage);
    on<ReviewQuestionsActionEventJumpPage>(_onJumpToPage);
  }
  void _onNextPage(ReviewQuestionsActionEventNextPage event,
      Emitter<ReviewQuestionsActionState> emit) {
    final currentPage = state.maybeWhen(
      initial: (page) => page,
      pageChanged: (page) => page,
      orElse: () => 0,
    );
    emit(ReviewQuestionsActionState.pageChanged(currentPage + 1));
  }

  void _onPreviousPage(
    ReviewQuestionsActionEventPreviousPage event,
    Emitter<ReviewQuestionsActionState> emit,
  ) {
    final currentPage = state.maybeWhen(
      initial: (page) => page,
      pageChanged: (page) => page,
      orElse: () => 0,
    );
    emit(ReviewQuestionsActionState.pageChanged(currentPage - 1));
  }

  void _onJumpToPage(ReviewQuestionsActionEventJumpPage event,
      Emitter<ReviewQuestionsActionState> emit) {
    emit(ReviewQuestionsActionState.pageChanged(event.numberPage));
  }
}
