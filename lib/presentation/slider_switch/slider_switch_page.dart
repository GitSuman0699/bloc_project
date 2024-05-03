import 'package:bloc_project/logic/bloc/slider_switch_bloc/slider_switch_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'slider_switch_view.dart';

class SliderSwitchPage extends StatelessWidget {
  const SliderSwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliderSwitchBloc(),
      child: const SliderSwitchView(),
    );
  }
}
