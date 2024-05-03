part of 'slider_switch_bloc.dart';

sealed class SliderSwitchEvent extends Equatable {
  const SliderSwitchEvent();

  @override
  List<Object> get props => [];
}

class SwitchOnOrOff extends SliderSwitchEvent {}

class SliderMove extends SliderSwitchEvent {
  final double sliderValue;
  const SliderMove(this.sliderValue);

  @override
  List<Object> get props => [sliderValue];
}
