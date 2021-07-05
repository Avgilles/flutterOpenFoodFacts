// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIGetProductResponse _$APIGetProductResponseFromJson(
    Map<String, dynamic> json) {
  return APIGetProductResponse(
    json['response'] == null
        ? null
        : APIProduct.fromJson(json['response'] as Map<String, dynamic>),
    json['error'],
  );
}

Map<String, dynamic> _$APIGetProductResponseToJson(
        APIGetProductResponse instance) =>
    <String, dynamic>{
      'response': instance.response?.toJson(),
      'error': instance.error,
    };

APIProduct _$APIProductFromJson(Map<String, dynamic> json) {
  return APIProduct(
    barcode: json['barcode'] as String,
    name: json['name'] as String?,
    altName: json['altName'] as String?,
    picture: extractPicture(json['pictures'] as Object),
    quantity: json['quantity'] as String?,
    brands:
        (json['brands'] as List<dynamic>?)?.map((e) => e as String).toList(),
    manufacturingCountries: (json['manufacturingCountries'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    nutriScore:
        _$enumDecodeNullable(_$APIProductNutriscoreEnumMap, json['nutriScore']),
    novaScore: extractNovaScore(json['novaScore'] as Object),
    ecoScore: _$enumDecodeNullable(
        _$APIProductEcoScoreEnumMap, json['ecoScoreGrade']),
    ingredients: json['ingredients'] == null
        ? null
        : APIProductIngredients.fromJson(
            json['ingredients'] as Map<String, dynamic>),
    traces: json['traces'] == null
        ? null
        : APIProductTraces.fromJson(json['traces'] as Map<String, dynamic>),
    allergens: extractAllergens(json['allergens'] as Object),
    additives: extractAdditives(json['additives'] as Object),
    nutrientLevels: json['nutrientLevels'] == null
        ? null
        : APINutrientLevels.fromJson(
            json['nutrientLevels'] as Map<String, dynamic>),
    nutritionFacts: json['nutritionFacts'] == null
        ? null
        : APINutritionFacts.fromJson(
            json['nutritionFacts'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$APIProductToJson(APIProduct instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'name': instance.name,
      'altName': instance.altName,
      'pictures': instance.picture,
      'quantity': instance.quantity,
      'brands': instance.brands,
      'manufacturingCountries': instance.manufacturingCountries,
      'nutriScore': _$APIProductNutriscoreEnumMap[instance.nutriScore],
      'novaScore': _$APIProductNovaScoreEnumMap[instance.novaScore],
      'ecoScoreGrade': _$APIProductEcoScoreEnumMap[instance.ecoScore],
      'ingredients': instance.ingredients?.toJson(),
      'traces': instance.traces?.toJson(),
      'allergens': instance.allergens?.toJson(),
      'additives': instance.additives?.toJson(),
      'nutrientLevels': instance.nutrientLevels?.toJson(),
      'nutritionFacts': instance.nutritionFacts?.toJson(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$APIProductNutriscoreEnumMap = {
  APIProductNutriscore.A: 'A',
  APIProductNutriscore.B: 'B',
  APIProductNutriscore.C: 'C',
  APIProductNutriscore.D: 'D',
  APIProductNutriscore.E: 'E',
};

const _$APIProductEcoScoreEnumMap = {
  APIProductEcoScore.A: 'A',
  APIProductEcoScore.B: 'B',
  APIProductEcoScore.C: 'C',
  APIProductEcoScore.D: 'D',
  APIProductEcoScore.E: 'E',
};

const _$APIProductNovaScoreEnumMap = {
  APIProductNovaScore.Group1: 'Group1',
  APIProductNovaScore.Group2: 'Group2',
  APIProductNovaScore.Group3: 'Group3',
  APIProductNovaScore.Group4: 'Group4',
};

APIProductIngredients _$APIProductIngredientsFromJson(
    Map<String, dynamic> json) {
  return APIProductIngredients(
    containsPalmOil: json['containsPalmOil'] as bool,
    ingredients:
        (json['list'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$APIProductIngredientsToJson(
        APIProductIngredients instance) =>
    <String, dynamic>{
      'containsPalmOil': instance.containsPalmOil,
      'list': instance.ingredients,
    };

APIProductTraces _$APIProductTracesFromJson(Map<String, dynamic> json) {
  return APIProductTraces(
    traces: (json['list'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$APIProductTracesToJson(APIProductTraces instance) =>
    <String, dynamic>{
      'list': instance.traces,
    };

APIProductAdditives _$APIProductAdditivesFromJson(Map<String, dynamic> json) {
  return APIProductAdditives(
    list: Map<String, String>.from(json['list'] as Map),
  );
}

Map<String, dynamic> _$APIProductAdditivesToJson(
        APIProductAdditives instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

APIProductAllergens _$APIProductAllergensFromJson(Map<String, dynamic> json) {
  return APIProductAllergens(
    list: (json['list'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$APIProductAllergensToJson(
        APIProductAllergens instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

APINutritionFacts _$APINutritionFactsFromJson(Map<String, dynamic> json) {
  return APINutritionFacts(
    servingSize: json['servingSize'] as String?,
    calories: json['calories'] == null
        ? null
        : APINutritionFactItem.fromJson(
            json['calories'] as Map<String, dynamic>),
    fat: json['fat'] == null
        ? null
        : APINutritionFactItem.fromJson(json['fat'] as Map<String, dynamic>),
    saturatedFat: json['saturatedFat'] == null
        ? null
        : APINutritionFactItem.fromJson(
            json['saturatedFat'] as Map<String, dynamic>),
    carbohydrate: json['carbohydrate'] == null
        ? null
        : APINutritionFactItem.fromJson(
            json['carbohydrate'] as Map<String, dynamic>),
    sugar: json['sugar'] == null
        ? null
        : APINutritionFactItem.fromJson(json['sugar'] as Map<String, dynamic>),
    fiber: json['fiber'] == null
        ? null
        : APINutritionFactItem.fromJson(json['fiber'] as Map<String, dynamic>),
    proteins: json['proteins'] == null
        ? null
        : APINutritionFactItem.fromJson(
            json['proteins'] as Map<String, dynamic>),
    sodium: json['sodium'] == null
        ? null
        : APINutritionFactItem.fromJson(json['sodium'] as Map<String, dynamic>),
    salt: json['salt'] == null
        ? null
        : APINutritionFactItem.fromJson(json['salt'] as Map<String, dynamic>),
    energy: json['energy'] == null
        ? null
        : APINutritionFactItem.fromJson(json['energy'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$APINutritionFactsToJson(APINutritionFacts instance) =>
    <String, dynamic>{
      'servingSize': instance.servingSize,
      'calories': instance.calories?.toJson(),
      'fat': instance.fat?.toJson(),
      'saturatedFat': instance.saturatedFat?.toJson(),
      'carbohydrate': instance.carbohydrate?.toJson(),
      'sugar': instance.sugar?.toJson(),
      'fiber': instance.fiber?.toJson(),
      'proteins': instance.proteins?.toJson(),
      'sodium': instance.sodium?.toJson(),
      'salt': instance.salt?.toJson(),
      'energy': instance.energy?.toJson(),
    };

APINutritionFactItem _$APINutritionFactItemFromJson(Map<String, dynamic> json) {
  return APINutritionFactItem(
    unit: json['unit'] as String,
    perServing: json['perServing'],
    per100g: json['per100g'],
  );
}

Map<String, dynamic> _$APINutritionFactItemToJson(
        APINutritionFactItem instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

APINutrientLevels _$APINutrientLevelsFromJson(Map<String, dynamic> json) {
  return APINutrientLevels(
    salt: json['salt'] == null
        ? null
        : APINutrientLevelItem.fromJson(json['salt'] as Map<String, dynamic>),
    saturatedFat: json['saturatedFat'] == null
        ? null
        : APINutrientLevelItem.fromJson(
            json['saturatedFat'] as Map<String, dynamic>),
    sugars: json['sugars'] == null
        ? null
        : APINutrientLevelItem.fromJson(json['sugars'] as Map<String, dynamic>),
    fat: json['fat'] == null
        ? null
        : APINutrientLevelItem.fromJson(json['fat'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$APINutrientLevelsToJson(APINutrientLevels instance) =>
    <String, dynamic>{
      'salt': instance.salt?.toJson(),
      'saturatedFat': instance.saturatedFat?.toJson(),
      'sugars': instance.sugars?.toJson(),
      'fat': instance.fat?.toJson(),
    };

APINutrientLevelItem _$APINutrientLevelItemFromJson(Map<String, dynamic> json) {
  return APINutrientLevelItem(
    per100g: json['per100g'] as num?,
    level:
        _$enumDecodeNullable(_$APINutrientLevelItemLevelEnumMap, json['level']),
  );
}

Map<String, dynamic> _$APINutrientLevelItemToJson(
        APINutrientLevelItem instance) =>
    <String, dynamic>{
      'level': _$APINutrientLevelItemLevelEnumMap[instance.level],
      'per100g': instance.per100g,
    };

const _$APINutrientLevelItemLevelEnumMap = {
  APINutrientLevelItemLevel.low: 'low',
  APINutrientLevelItemLevel.medium: 'moderate',
  APINutrientLevelItemLevel.high: 'high',
};
