import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'network_product.dart';

part 'network_api.g.dart';

@RestApi()
abstract class OpenFoodFactsAPI {
  factory OpenFoodFactsAPI(Dio dio, {required String baseUrl}) =
  _OpenFoodFactsAPI;


  @GET('/getProduct')
  Future<NetworkProduct> findProduct(
      {@Query('barcode') required String barcode, CancelToken? token});
}

