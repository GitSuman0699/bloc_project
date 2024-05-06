// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistModel _$WishlistModelFromJson(Map<String, dynamic> json) {
  return _WishlistModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool get isWishlisted => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistModelCopyWith<WishlistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistModelCopyWith<$Res> {
  factory $WishlistModelCopyWith(
          WishlistModel value, $Res Function(WishlistModel) then) =
      _$WishlistModelCopyWithImpl<$Res, WishlistModel>;
  @useResult
  $Res call({int? id, String? title, bool isWishlisted, bool isChecked});
}

/// @nodoc
class _$WishlistModelCopyWithImpl<$Res, $Val extends WishlistModel>
    implements $WishlistModelCopyWith<$Res> {
  _$WishlistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isWishlisted = null,
    Object? isChecked = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isWishlisted: null == isWishlisted
          ? _value.isWishlisted
          : isWishlisted // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistModelImplCopyWith<$Res>
    implements $WishlistModelCopyWith<$Res> {
  factory _$$WishlistModelImplCopyWith(
          _$WishlistModelImpl value, $Res Function(_$WishlistModelImpl) then) =
      __$$WishlistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, bool isWishlisted, bool isChecked});
}

/// @nodoc
class __$$WishlistModelImplCopyWithImpl<$Res>
    extends _$WishlistModelCopyWithImpl<$Res, _$WishlistModelImpl>
    implements _$$WishlistModelImplCopyWith<$Res> {
  __$$WishlistModelImplCopyWithImpl(
      _$WishlistModelImpl _value, $Res Function(_$WishlistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isWishlisted = null,
    Object? isChecked = null,
  }) {
    return _then(_$WishlistModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isWishlisted: null == isWishlisted
          ? _value.isWishlisted
          : isWishlisted // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistModelImpl implements _WishlistModel {
  const _$WishlistModelImpl(
      {this.id, this.title, this.isWishlisted = false, this.isChecked = false});

  factory _$WishlistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  @JsonKey()
  final bool isWishlisted;
  @override
  @JsonKey()
  final bool isChecked;

  @override
  String toString() {
    return 'WishlistModel(id: $id, title: $title, isWishlisted: $isWishlisted, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isWishlisted, isWishlisted) ||
                other.isWishlisted == isWishlisted) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, isWishlisted, isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistModelImplCopyWith<_$WishlistModelImpl> get copyWith =>
      __$$WishlistModelImplCopyWithImpl<_$WishlistModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistModel implements WishlistModel {
  const factory _WishlistModel(
      {final int? id,
      final String? title,
      final bool isWishlisted,
      final bool isChecked}) = _$WishlistModelImpl;

  factory _WishlistModel.fromJson(Map<String, dynamic> json) =
      _$WishlistModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  bool get isWishlisted;
  @override
  bool get isChecked;
  @override
  @JsonKey(ignore: true)
  _$$WishlistModelImplCopyWith<_$WishlistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
