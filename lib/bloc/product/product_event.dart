part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.addProduct(String productName, String measurment, String price, String uid) =
      AddProduct;
}
