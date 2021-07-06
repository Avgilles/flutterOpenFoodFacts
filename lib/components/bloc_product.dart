// En entrée
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/network/network_api.dart';
import 'package:yuka/network/network_product.dart';

import '../product.dart';

abstract class ProductEvent {}

class FetchProductEvent extends ProductEvent {
  final String barcode;

  FetchProductEvent(this.barcode);
}

// En sortie
abstract class ProductState {
  final Product? product;

  ProductState(this.product);
}

class InitialState extends ProductState {
  InitialState() : super(null);
}

class ProductAvailableState extends ProductState {
  ProductAvailableState(Product product) : super(product);
}

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  // Donner la valeur initiale
  ProductBloc() : super(InitialState());

  void fetchProduct(String barcode) {
    add(FetchProductEvent(barcode));
  }

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is FetchProductEvent) {
      String barcode = event.barcode;

      NetworkProduct networkProduct = await OpenFoodFactsAPI(
        Dio(),
        baseUrl: 'https://api.formation-android.fr/v2/',
      ).findProduct(barcode: barcode);


      // println(networkProduct.response?.manufacturingCountries);
      // Requête
      yield ProductAvailableState(Product(
        barcode: barcode,
        name: networkProduct.response!.name,
        brands: <String>['Cassegrain'],
        nutriScore: ProductNutriscore.A
      ));
    }
  }
}

//--*

