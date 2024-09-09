import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/data/models/znumberquestionpertype/znumberquestionpertype.dart';
import 'package:gplx_600_cau/features/domain/use_cases/znumberquestionpertype_use_case/znumberquestionpertype_use_case.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  ZNumberQuestionPerTypeUseCase zNumberQuestionPerTypeUseCase;
  HomeBloc(this.zNumberQuestionPerTypeUseCase)
      : super(const HomeState.initial()) {
    on<HomeEventGetQuestionStatistics>(_getQuestionStatistics);
  }

  Future<void> _getQuestionStatistics(
    HomeEventGetQuestionStatistics event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    final result = await zNumberQuestionPerTypeUseCase.getQuestionStatistics();
    result.fold(
      (l) => null,
      (r) => emit(HomeState.data(questionPerType: r)),
    );
  }
}
