// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkProduct _$NetworkProductFromJson(Map<String, dynamic> json) {
  return NetworkProduct(
    json['response'] == null
        ? null
        : NetworkProductResponse.fromJson(
            json['response'] as Map<String, dynamic>),
    json['error'],
  );
}

Map<String, dynamic> _$NetworkProductToJson(NetworkProduct instance) =>
    <String, dynamic>{
      'response': instance.response?.toJson(),
      'error': instance.error,
    };

NetworkProductResponse _$NetworkProductResponseFromJson(
    Map<String, dynamic> json) {
  return NetworkProductResponse(
    json['name'] as String,
    json['altName'] as String,
  );
}

Map<String, dynamic> _$NetworkProductResponseToJson(
        NetworkProductResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'altName': instance.altName,
    };
