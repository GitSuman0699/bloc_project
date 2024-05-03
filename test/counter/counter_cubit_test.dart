import 'package:bloc_project/logic/cubit/counter_cubit/cubit/counter_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test of counter cubit', () {
    late CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });

    test(
        'checking intial state of CounterCubit is CounterState(counterValue: 0)',
        () {
      expect(counterCubit.state, CounterState(counterValue: 0));
    });

    blocTest(
      'check the state of CounterCubit is incremented by CounterState(counterValue: 1)',
      act: (cubit) => counterCubit.increment(),
      build: () => counterCubit,
      expect: () => [CounterState(counterValue: 1)],
    );

    blocTest(
      'check the state of CounterCubit is decremented by CounterState(counterValue: -1)',
      act: (cubit) => counterCubit.decremnet(),
      build: () => counterCubit,
      expect: () => [CounterState(counterValue: -1)],
    );

    tearDown(() {
      counterCubit.close();
    });
  });
}
