import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gplx_600_cau/features/presentation/blocs/home/home_event.dart';
import 'package:gplx_600_cau/features/presentation/blocs/home/home_state.dart';
import 'package:injectable/injectable.dart';

@singleton
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0)) {
    on<Increment>((event, emit) {
      emit(CounterState(counterValue: state.counterValue + 1));
    });

    on<Decrement>((event, emit) {
      emit(CounterState(counterValue: state.counterValue - 1));
    });
  }
}
