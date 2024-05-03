import 'package:bloc/bloc.dart';
import 'package:bloc_project/utils/image_picker.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  ImagePickerBloc() : super(const ImagePickerState()) {
    on<ImagePickerGallery>(_imagePickerFromGallery);
    on<ImagePickerCamera>(_imagePickerFromCamera);
  }

  void _imagePickerFromGallery(
      ImagePickerGallery event, Emitter<ImagePickerState> emit) async {
    final image = await ImagePickerHerlper.instance.imageFromGallery();
    emit(state.copyWith(file: image));
  }

  void _imagePickerFromCamera(
      ImagePickerCamera event, Emitter<ImagePickerState> emit) async {
    final image = await ImagePickerHerlper.instance.imageFromCamera();
    emit(state.copyWith(file: image));
  }
}
