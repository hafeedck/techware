// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  String get productName => throw _privateConstructorUsedError;
  String get measurment => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String productName, String measurment, String price, String uid)
        addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String productName, String measurment, String price, String uid)?
        addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String productName, String measurment, String price, String uid)?
        addProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProduct value) addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProduct value)? addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProduct value)? addProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEventCopyWith<ProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
  @useResult
  $Res call({String productName, String measurment, String price, String uid});
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? measurment = null,
    Object? price = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      measurment: null == measurment
          ? _value.measurment
          : measurment // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddProductCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$AddProductCopyWith(
          _$AddProduct value, $Res Function(_$AddProduct) then) =
      __$$AddProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productName, String measurment, String price, String uid});
}

/// @nodoc
class __$$AddProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddProduct>
    implements _$$AddProductCopyWith<$Res> {
  __$$AddProductCopyWithImpl(
      _$AddProduct _value, $Res Function(_$AddProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? measurment = null,
    Object? price = null,
    Object? uid = null,
  }) {
    return _then(_$AddProduct(
      null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      null == measurment
          ? _value.measurment
          : measurment // ignore: cast_nullable_to_non_nullable
              as String,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProduct implements AddProduct {
  const _$AddProduct(this.productName, this.measurment, this.price, this.uid);

  @override
  final String productName;
  @override
  final String measurment;
  @override
  final String price;
  @override
  final String uid;

  @override
  String toString() {
    return 'ProductEvent.addProduct(productName: $productName, measurment: $measurment, price: $price, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProduct &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.measurment, measurment) ||
                other.measurment == measurment) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productName, measurment, price, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductCopyWith<_$AddProduct> get copyWith =>
      __$$AddProductCopyWithImpl<_$AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String productName, String measurment, String price, String uid)
        addProduct,
  }) {
    return addProduct(productName, measurment, price, uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String productName, String measurment, String price, String uid)?
        addProduct,
  }) {
    return addProduct?.call(productName, measurment, price, uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String productName, String measurment, String price, String uid)?
        addProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(productName, measurment, price, uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProduct value) addProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProduct value)? addProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProduct value)? addProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class AddProduct implements ProductEvent {
  const factory AddProduct(final String productName, final String measurment,
      final String price, final String uid) = _$AddProduct;

  @override
  String get productName;
  @override
  String get measurment;
  @override
  String get price;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$AddProductCopyWith<_$AddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  bool? get isloading => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call({bool? isloading, String? status});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: freezed == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isloading, String? status});
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ProductState(
      isloading: freezed == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState({this.isloading, this.status});

  @override
  final bool? isloading;
  @override
  final String? status;

  @override
  String toString() {
    return 'ProductState(isloading: $isloading, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState({final bool? isloading, final String? status}) =
      _$_ProductState;

  @override
  bool? get isloading;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
