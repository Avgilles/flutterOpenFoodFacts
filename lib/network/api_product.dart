import 'package:json_annotation/json_annotation.dart';

part 'api_product.g.dart';

@JsonSerializable(explicitToJson: true)
class APIGetProductResponse {
  final APIProduct? response;
  final Object? error;

  APIGetProductResponse(this.response, this.error);

  factory APIGetProductResponse.fromJson(Map<String, dynamic> json) =>
      _$APIGetProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$APIGetProductResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APIProduct {
  final String barcode;
  final String? name;
  final String? altName;
  @JsonKey(name: 'pictures', fromJson: extractPicture)
  final String? picture;
  final String? quantity;
  final List<String>? brands;
  final List<String>? manufacturingCountries;
  final APIProductNutriscore? nutriScore;
  @JsonKey(fromJson: extractNovaScore)
  final APIProductNovaScore? novaScore;
  @JsonKey(name: 'ecoScoreGrade')
  final APIProductEcoScore? ecoScore;
  final APIProductIngredients? ingredients;
  final APIProductTraces? traces;
  @JsonKey(fromJson: extractAllergens)
  final APIProductAllergens? allergens;
  @JsonKey(fromJson: extractAdditives)
  final APIProductAdditives? additives;
  final APINutrientLevels? nutrientLevels;
  final APINutritionFacts? nutritionFacts;

  APIProduct({
    required this.barcode,
    this.name,
    this.altName,
    this.picture,
    this.quantity,
    this.brands,
    this.manufacturingCountries,
    this.nutriScore,
    this.novaScore,
    this.ecoScore,
    this.ingredients,
    this.traces,
    this.allergens,
    this.additives,
    this.nutrientLevels,
    this.nutritionFacts,
  });

  factory APIProduct.fromJson(Map<String, dynamic> json) =>
      _$APIProductFromJson(json);

  Map<String, dynamic> toJson() => _$APIProductToJson(this);
}

String? extractPicture(Object res) {
  if (res is Map) {
    return res['product'];
  } else {
    return null;
  }
}

APIProductNovaScore? extractNovaScore(Object res) {
  if (res is int) {
    switch (res) {
      case 1:
        return APIProductNovaScore.group1;
      case 2:
        return APIProductNovaScore.group2;
      case 3:
        return APIProductNovaScore.group3;
      case 4:
        return APIProductNovaScore.group4;
    }
  }

  return null;
}

APIProductAdditives? extractAdditives(Object res) {
  if (res is Map) {
    return APIProductAdditives(
        list: (res as Map<String, dynamic>).map<String, String>(
                (String key, dynamic value) => MapEntry<String, String>(key, value.toString())));
  } else {
    return null;
  }
}

APIProductAllergens? extractAllergens(Object res) {
  if (res is Map && res.containsKey('list')) {
    return APIProductAllergens(
        list: (res['list'] as List<dynamic>)
            .map<String>((dynamic e) => e.toString())
            .toList(growable: false));
  } else {
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class APIProductIngredients {
  @JsonKey(name: 'containsPalmOil')
  final bool containsPalmOil;
  @JsonKey(name: 'list')
  final List<String> ingredients;

  APIProductIngredients({
    required this.containsPalmOil,
    required this.ingredients,
  });

  factory APIProductIngredients.fromJson(Map<String, dynamic> json) =>
      _$APIProductIngredientsFromJson(json);

  Map<String, dynamic> toJson() => _$APIProductIngredientsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APIProductTraces {
  @JsonKey(name: 'list')
  final List<String> traces;

  APIProductTraces({
    required this.traces,
  });

  factory APIProductTraces.fromJson(Map<String, dynamic> json) =>
      _$APIProductTracesFromJson(json);

  Map<String, dynamic> toJson() => _$APIProductTracesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APIProductAdditives {
  @JsonKey(name: 'list')
  final Map<String, String> list;

  APIProductAdditives({
    required this.list,
  });

  factory APIProductAdditives.fromJson(Map<String, dynamic> json) =>
      _$APIProductAdditivesFromJson(json);

  Map<String, dynamic> toJson() => _$APIProductAdditivesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APIProductAllergens {
  final List<String> list;

  APIProductAllergens({
    required this.list,
  });

  factory APIProductAllergens.fromJson(Map<String, dynamic> json) =>
      _$APIProductAllergensFromJson(json);

  Map<String, dynamic> toJson() => _$APIProductAllergensToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APINutritionFacts {
  final String? servingSize;
  final APINutritionFactItem? calories;
  final APINutritionFactItem? fat;
  final APINutritionFactItem? saturatedFat;
  final APINutritionFactItem? carbohydrate;
  final APINutritionFactItem? sugar;
  final APINutritionFactItem? fiber;
  final APINutritionFactItem? proteins;
  final APINutritionFactItem? sodium;
  final APINutritionFactItem? salt;
  final APINutritionFactItem? energy;

  APINutritionFacts(
      {this.servingSize,
        this.calories,
        this.fat,
        this.saturatedFat,
        this.carbohydrate,
        this.sugar,
        this.fiber,
        this.proteins,
        this.sodium,
        this.salt,
        this.energy});

  factory APINutritionFacts.fromJson(Map<String, dynamic> json) =>
      _$APINutritionFactsFromJson(json);

  Map<String, dynamic> toJson() => _$APINutritionFactsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APINutritionFactItem {
  final String unit;
  final dynamic perServing;
  final dynamic per100g;

  APINutritionFactItem({required this.unit, this.perServing, this.per100g});

  factory APINutritionFactItem.fromJson(Map<String, dynamic> json) =>
      _$APINutritionFactItemFromJson(json);

  Map<String, dynamic> toJson() => _$APINutritionFactItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APINutrientLevels {
  final APINutrientLevelItem? salt;
  final APINutrientLevelItem? saturatedFat;
  final APINutrientLevelItem? sugars;
  final APINutrientLevelItem? fat;

  APINutrientLevels({this.salt, this.saturatedFat, this.sugars, this.fat});

  factory APINutrientLevels.fromJson(Map<String, dynamic> json) =>
      _$APINutrientLevelsFromJson(json);

  Map<String, dynamic> toJson() => _$APINutrientLevelsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class APINutrientLevelItem {
  final APINutrientLevelItemLevel? level;
  final num? per100g;

  APINutrientLevelItem({this.per100g, this.level});

  factory APINutrientLevelItem.fromJson(Map<String, dynamic> json) =>
      _$APINutrientLevelItemFromJson(json);

  Map<String, dynamic> toJson() => _$APINutrientLevelItemToJson(this);
}

enum APINutrientLevelItemLevel {
@JsonValue('low')
low,
@JsonValue('moderate')
medium,
@JsonValue('high')
high,
}

enum APIProductNutriscore {
@JsonValue('A')
A,
@JsonValue('B')
B,
@JsonValue('C')
C,
@JsonValue('D')
D,
@JsonValue('E')
E
}

enum APIProductNovaScore { group1, group2, group3, group4 }

enum APIProductEcoScore {
@JsonValue('A')
A,
@JsonValue('B')
B,
@JsonValue('C')
C,
@JsonValue('D')
D,
@JsonValue('E')
E
}