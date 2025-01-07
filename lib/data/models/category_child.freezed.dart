// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_child.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Categorychild _$CategorychildFromJson(Map<String, dynamic> json) {
  return _Categorychild.fromJson(json);
}

/// @nodoc
mixin _$Categorychild {
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get parent => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Categorychild to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Categorychild
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategorychildCopyWith<Categorychild> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorychildCopyWith<$Res> {
  factory $CategorychildCopyWith(
          Categorychild value, $Res Function(Categorychild) then) =
      _$CategorychildCopyWithImpl<$Res, Categorychild>;
  @useResult
  $Res call(
      {String title,
      double price,
      String link,
      String parent,
      String quantity,
      String description});
}

/// @nodoc
class _$CategorychildCopyWithImpl<$Res, $Val extends Categorychild>
    implements $CategorychildCopyWith<$Res> {
  _$CategorychildCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Categorychild
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? price = null,
    Object? link = null,
    Object? parent = null,
    Object? quantity = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorychildImplCopyWith<$Res>
    implements $CategorychildCopyWith<$Res> {
  factory _$$CategorychildImplCopyWith(
          _$CategorychildImpl value, $Res Function(_$CategorychildImpl) then) =
      __$$CategorychildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      double price,
      String link,
      String parent,
      String quantity,
      String description});
}

/// @nodoc
class __$$CategorychildImplCopyWithImpl<$Res>
    extends _$CategorychildCopyWithImpl<$Res, _$CategorychildImpl>
    implements _$$CategorychildImplCopyWith<$Res> {
  __$$CategorychildImplCopyWithImpl(
      _$CategorychildImpl _value, $Res Function(_$CategorychildImpl) _then)
      : super(_value, _then);

  /// Create a copy of Categorychild
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? price = null,
    Object? link = null,
    Object? parent = null,
    Object? quantity = null,
    Object? description = null,
  }) {
    return _then(_$CategorychildImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategorychildImpl implements _Categorychild {
  const _$CategorychildImpl(
      {required this.title,
      required this.price,
      required this.link,
      required this.parent,
      required this.quantity,
      required this.description});

  factory _$CategorychildImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategorychildImplFromJson(json);

  @override
  final String title;
  @override
  final double price;
  @override
  final String link;
  @override
  final String parent;
  @override
  final String quantity;
  @override
  final String description;

  @override
  String toString() {
    return 'Categorychild(title: $title, price: $price, link: $link, parent: $parent, quantity: $quantity, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorychildImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, price, link, parent, quantity, description);

  /// Create a copy of Categorychild
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorychildImplCopyWith<_$CategorychildImpl> get copyWith =>
      __$$CategorychildImplCopyWithImpl<_$CategorychildImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategorychildImplToJson(
      this,
    );
  }
}

abstract class _Categorychild implements Categorychild {
  const factory _Categorychild(
      {required final String title,
      required final double price,
      required final String link,
      required final String parent,
      required final String quantity,
      required final String description}) = _$CategorychildImpl;

  factory _Categorychild.fromJson(Map<String, dynamic> json) =
      _$CategorychildImpl.fromJson;

  @override
  String get title;
  @override
  double get price;
  @override
  String get link;
  @override
  String get parent;
  @override
  String get quantity;
  @override
  String get description;

  /// Create a copy of Categorychild
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorychildImplCopyWith<_$CategorychildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
