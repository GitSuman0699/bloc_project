part of 'image_picker_bloc.dart';

sealed class ImagePickerEvent extends Equatable {
  const ImagePickerEvent();

  @override
  List<Object> get props => [];
}

class ImagePickerGallery extends ImagePickerEvent {}

class ImagePickerCamera extends ImagePickerEvent {}
