import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:machine_test/service/firebase_service.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      if (event is AddProduct) {
        addProducts(event, emit);
      }
    });
  }

  addProducts(
    AddProduct event,
    Emitter<ProductState> emit,
  ) {
    try {
      emit(state.copyWith(
        isloading: true,
      ));
      FirestoreServices.addProduct(
          event.productName, event.measurment, event.price, event.uid);
      emit(state.copyWith(isloading: false, status: "Sucessfully Added"));
    } catch (e) {
      emit(state.copyWith(isloading: false, status: e.toString()));
    }
  }
}
