part of 'slider_switch_bloc.dart';

class SliderSwitchState extends Equatable {
  final double sliderValue;
  final bool isSwitch;
  const SliderSwitchState({
    this.isSwitch = false,
    this.sliderValue = 1.0,
  });

  SliderSwitchState copyWith({bool? isSwitch, double? sliderValue}) {
    return SliderSwitchState(
      isSwitch: isSwitch ?? this.isSwitch,
      sliderValue: sliderValue ?? this.sliderValue,
    );
  }

  @override
  List<Object> get props => [isSwitch, sliderValue];
}

class SliderSwitchInitial extends SliderSwitchState {}
