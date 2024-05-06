import 'package:bloc_project/logic/bloc/api_call_bloc/api_call_bloc.dart';
import 'package:bloc_project/logic/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiCallScreen extends StatefulWidget {
  const ApiCallScreen({super.key});

  @override
  State<ApiCallScreen> createState() => _ApiCallScreenState();
}

class _ApiCallScreenState extends State<ApiCallScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Call"),
      ),
      body: BlocBuilder<ApiCallBloc, ApiCallState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == Status.error) {
            return Center(child: ErrorWidget("Something went wrong"));
          } else if (state.data.isEmpty) {
            return const Center(child: Text("No Data Found"));
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              shrinkWrap: true,
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                final item = state.data[index];
                return Container(
                  width: 80,
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        item.images!.fixedHeight!.url!,
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
