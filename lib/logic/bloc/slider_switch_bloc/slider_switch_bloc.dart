import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'slider_switch_event.dart';
part 'slider_switch_state.dart';

class SliderSwitchBloc extends Bloc<SliderSwitchEvent, SliderSwitchState> {
  SliderSwitchBloc() : super(const SliderSwitchState()) {
    on<SwitchOnOrOff>(_switchOnOrOff);
    on<SliderMove>(_sliderMove);
  }

  void _switchOnOrOff(SwitchOnOrOff event, Emitter<SliderSwitchState> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _sliderMove(SliderMove event, Emitter<SliderSwitchState> emit) {
    emit(state.copyWith(sliderValue: event.sliderValue));
  }
}
