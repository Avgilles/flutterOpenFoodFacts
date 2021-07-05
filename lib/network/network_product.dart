import 'package:json_annotation/json_annotation.dart';

part 'network_product.g.dart';

@JsonSerializable(explicitToJson: true)
class NetworkProduct {
  final NetworkProductResponse? response;
  final Object? error;

  NetworkProduct(this.response, this.error);

  factory NetworkProduct.fromJson(Map<String, dynamic> json) =>
      _$NetworkProductFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NetworkProductResponse {
  @JsonKey(name: 'name')
  final String name;
  final String altName;

  NetworkProductResponse(this.name, this.altName);

  factory NetworkProductResponse.fromJson(Map<String, dynamic> json) =>
      _$NetworkProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkProductResponseToJson(this);
}