part of 'wishlist_bloc.dart';

sealed class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object?> get props => [];
}

class FetchWishlist extends WishlistEvent {}

class MarkWishlist extends WishlistEvent {
  final int index;
  final WishlistModel model;
  const MarkWishlist({
    required this.index,
    required this.model,
  });

  @override
  List<Object?> get props => [index, model];
}

class CheckBoxEvent extends WishlistEvent {
  final bool value;
  final int index;
  final WishlistModel model;
  const CheckBoxEvent({
    required this.index,
    required this.model,
    required this.value,
  });

  @override
  List<Object?> get props => [index, model, value];
}

class UnSelectCheckBox extends WishlistEvent {
  final int index;
  final WishlistModel model;
  const UnSelectCheckBox({
    required this.index,
    required this.model,
  });

  @override
  List<Object?> get props => [index, model];
}

class DeleteEvent extends WishlistEvent {}
