part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
 const factory ProductState({
    bool? isloading,
    String? status,
  }) = _ProductState;
  factory ProductState.initial() => const ProductState(
        isloading: false,
        status: "",
      );
}
