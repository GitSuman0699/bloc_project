import 'package:bloc_project/logic/bloc/slider_switch_bloc/slider_switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderSwitchView extends StatelessWidget {
  const SliderSwitchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Notification"),
                BlocBuilder<SliderSwitchBloc, SliderSwitchState>(
                  buildWhen: (previous, current) =>
                      previous.isSwitch != current.isSwitch,
                  builder: (BuildContext context, SliderSwitchState state) =>
                      Switch(
                    value: state.isSwitch,
                    onChanged: (value) {
                      context.read<SliderSwitchBloc>().add(SwitchOnOrOff());
                    },
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            BlocBuilder<SliderSwitchBloc, SliderSwitchState>(
              buildWhen: (previous, current) =>
                  previous.sliderValue != current.sliderValue,
              builder: (context, state) {
                return Container(
                  height: 150,
                  width: 300,
                  color: Colors.amber.withOpacity(state.sliderValue),
                );
              },
            ),
            const SizedBox(height: 30),
            BlocBuilder<SliderSwitchBloc, SliderSwitchState>(
              buildWhen: (previous, current) =>
                  previous.sliderValue != current.sliderValue,
              builder: (context, state) {
                return Slider(
                  value: state.sliderValue,
                  onChanged: (value) {
                    context.read<SliderSwitchBloc>().add(SliderMove(value));
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
