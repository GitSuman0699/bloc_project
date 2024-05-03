import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(counterValue: 0));

  void increment() => emit(CounterState(counterValue: state.counterValue + 1));
  void decremnet() => emit(CounterState(counterValue: state.counterValue - 1));
}
