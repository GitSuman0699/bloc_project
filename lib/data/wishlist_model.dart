import 'package:freezed_annotation/freezed_annotation.dart';
part 'wishlist_model.freezed.dart';
part 'wishlist_model.g.dart';

@freezed
class WishlistModel with _$WishlistModel {
  const factory WishlistModel({
    int? id,
    String? title,
    @Default(false) bool isWishlisted,
    @Default(false) bool isChecked,
  }) = _WishlistModel;

  factory WishlistModel.fromJson(Map<String, dynamic> json) =>
      _$WishlistModelFromJson(json);
}
