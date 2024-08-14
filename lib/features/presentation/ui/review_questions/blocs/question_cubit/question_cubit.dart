import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuestionCubit extends Cubit<int> {
  QuestionCubit() : super(0);

  void nextPage() {
    emit(state + 1);
  }

  void previousPage() {
    emit(state - 1);
  }

  void jumpToPage(int page) {
    emit(page);
  }
}
