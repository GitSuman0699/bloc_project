import 'dart:io';

import 'package:bloc_project/logic/bloc/image_picker_bloc/image_picker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<ImagePickerBloc, ImagePickerState>(
              builder: (context, state) {
                if (state.file == null) {
                  return const SizedBox.shrink();
                } else {
                  return SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.file(
                      File(state.file!.path),
                    ),
                  );
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImagePickerBloc>()
                            .add(ImagePickerGallery());
                      },
                      child: const Text("Gallery")),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImagePickerBloc>()
                            .add(ImagePickerCamera());
                      },
                      child: const Text("Camera")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
