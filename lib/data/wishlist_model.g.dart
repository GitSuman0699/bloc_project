// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistModelImpl _$$WishlistModelImplFromJson(Map<String, dynamic> json) =>
    _$WishlistModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      isWishlisted: json['isWishlisted'] as bool? ?? false,
      isChecked: json['isChecked'] as bool? ?? false,
    );

Map<String, dynamic> _$$WishlistModelImplToJson(_$WishlistModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isWishlisted': instance.isWishlisted,
      'isChecked': instance.isChecked,
    };
