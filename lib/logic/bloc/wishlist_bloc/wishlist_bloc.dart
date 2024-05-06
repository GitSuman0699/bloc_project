import 'package:bloc/bloc.dart';
import 'package:bloc_project/data/repository/wishlist_repository.dart';
import 'package:bloc_project/data/wishlist_model.dart';
import 'package:equatable/equatable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final List<WishlistModel> _wishlistData = [];
  final List<WishlistModel> _tempList = [];
  final WishlistModel _wishlistModel = const WishlistModel();

  WishlistBloc() : super(const WishlistState()) {
    on<FetchWishlist>(_fetchWishlist);
    on<MarkWishlist>(_markWishlist);
    on<CheckBoxEvent>(_selectCheckBox);
    on<DeleteEvent>(_deleteItems);
  }

  void _fetchWishlist(FetchWishlist event, Emitter<WishlistState> emit) async {
    final wishlist = await WishlistRepository.instance.fetchWishlist();
    _wishlistData.addAll(wishlist);
    emit(state.copyWith(
      wishlist: List.from(_wishlistData),
      status: Status.success,
    ));
  }

  void _markWishlist(MarkWishlist event, Emitter<WishlistState> emit) {
    if (_tempList.contains(_wishlistData[event.index])) {
      _tempList.remove(_wishlistData[event.index]);
      _tempList.add(_wishlistModel.copyWith(
        id: event.model.id,
        title: event.model.title,
        isChecked: event.model.isChecked,
        isWishlisted: !event.model.isWishlisted,
      ));
    }

    _wishlistData[event.index] = _wishlistModel.copyWith(
      id: event.model.id,
      title: event.model.title,
      isChecked: event.model.isChecked,
      isWishlisted: !event.model.isWishlisted,
    );

    emit(state.copyWith(
        wishlist: List.from(_wishlistData), tempList: _tempList));
  }

  void _selectCheckBox(CheckBoxEvent event, Emitter<WishlistState> emit) {
    if (event.value) {
      _tempList.add(_wishlistModel.copyWith(
        id: event.model.id,
        title: event.model.title,
        isChecked: event.value,
        isWishlisted: event.model.isWishlisted,
      ));
    } else {
      _tempList.remove(event.model);
    }

    _wishlistData[event.index] = _wishlistModel.copyWith(
      id: event.model.id,
      title: event.model.title,
      isChecked: !event.model.isChecked,
      isWishlisted: event.model.isWishlisted,
    );

    emit(state.copyWith(
        wishlist: List.from(_wishlistData), tempList: List.from(_tempList)));
  }

  void _deleteItems(DeleteEvent event, Emitter<WishlistState> emit) {}
}
