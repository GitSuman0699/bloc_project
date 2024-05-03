part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  List<Object?> get props => [counterValue];
}
