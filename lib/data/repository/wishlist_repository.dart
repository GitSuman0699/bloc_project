import 'package:bloc_project/data/wishlist_model.dart';

class WishlistRepository {
  WishlistRepository._();
  static final instance = WishlistRepository._();

  WishlistModel wishlistModel = const WishlistModel();

  Future<List<WishlistModel>> fetchWishlist() async {
    List<WishlistModel> list = [];
    await Future.delayed(const Duration(seconds: 3));
    for (int i = 0; i < 10; i++) {
      list.add(wishlistModel.copyWith(id: i, title: "$i Item"));
    }

    return list;
  }
}
