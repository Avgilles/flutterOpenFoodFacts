import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'api_product.dart';

part 'network_api.g.dart';

@RestApi()
abstract class OpenFoodFactsAPI {
  factory OpenFoodFactsAPI(Dio dio, {required String baseUrl}) =
  _OpenFoodFactsAPI;


  @GET('/getProduct')
  Future<APIGetProductResponse> findProduct(
      {@Query('barcode') required String barcode, CancelToken? token});
}

