part of 'wishlist_bloc.dart';

enum Status { loading, success, error }

class WishlistState extends Equatable {
  final List<WishlistModel> wishlist;
  final List<WishlistModel> tempList;
  final Status status;
  const WishlistState({
    this.wishlist = const [],
    this.tempList = const [],
    this.status = Status.loading,
  });

  WishlistState copyWith(
      {List<WishlistModel>? wishlist,
      List<WishlistModel>? tempList,
      Status? status}) {
    return WishlistState(
      wishlist: wishlist ?? this.wishlist,
      tempList: tempList ?? this.tempList,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [wishlist, tempList, status];
}
