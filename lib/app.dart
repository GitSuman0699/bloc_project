import 'package:bloc_project/logic/bloc/api_call_bloc/api_call_bloc.dart';
import 'package:bloc_project/logic/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:bloc_project/logic/bloc/image_picker_bloc/image_picker_bloc.dart';
import 'package:bloc_project/logic/bloc/todo_bloc/todo_bloc.dart';
import 'package:bloc_project/presentation/api_call/api_call.dart';
import 'package:bloc_project/presentation/image_picker/image_picker_view.dart';
import 'package:bloc_project/presentation/todo/todo_page.dart';
import 'package:bloc_project/presentation/todo/todo_view.dart';
import 'package:bloc_project/presentation/wishlist/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TodoBloc()),
        BlocProvider(create: (context) => ImagePickerBloc()),
        BlocProvider(create: (context) => WishlistBloc()),
        BlocProvider(create: (context) => ApiCallBloc()..add(FetchData())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ApiCallScreen(),
      ),
    );
  }
}
