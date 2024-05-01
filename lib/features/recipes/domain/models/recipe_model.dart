// To parse this JSON data, do
//
//     final recipesModel = recipesModelFromJson(jsonString);

import 'dart:convert';

List<RecipesModel> recipesModelFromJson(String str) =>
    List<RecipesModel>.from(json.decode(str).map((x) => RecipesModel.fromJson(x)));

String recipesModelToJson(List<RecipesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RecipesModel {
  String? id;
  String? fats;
  String? name;
  String? time;
  String? image;
  List<String>? weeks;
  String? carbos;
  String? fibers;
  double? rating;
  String? country;
  int? ratings;
  String? calories;
  String? headline;
  List<String>? keywords;
  List<String>? products;
  String? proteins;
  int? favorites;
  int? difficulty;
  String? description;
  bool? highlighted;
  List<String>? ingredients;
  dynamic incompatibilities;
  List<String>? deliverableIngredients;
  List<dynamic>? undeliverableIngredients;

  RecipesModel({
    this.id,
    this.fats,
    this.name,
    this.time,
    this.image,
    this.weeks,
    this.carbos,
    this.fibers,
    this.rating,
    this.country,
    this.ratings,
    this.calories,
    this.headline,
    this.keywords,
    this.products,
    this.proteins,
    this.favorites,
    this.difficulty,
    this.description,
    this.highlighted,
    this.ingredients,
    this.incompatibilities,
    this.deliverableIngredients,
    this.undeliverableIngredients,
  });

  RecipesModel copyWith({
    String? id,
    String? fats,
    String? name,
    String? time,
    String? image,
    List<String>? weeks,
    String? carbos,
    String? fibers,
    double? rating,
    String? country,
    int? ratings,
    String? calories,
    String? headline,
    List<String>? keywords,
    List<String>? products,
    String? proteins,
    int? favorites,
    int? difficulty,
    String? description,
    bool? highlighted,
    List<String>? ingredients,
    dynamic incompatibilities,
    List<String>? deliverableIngredients,
    List<dynamic>? undeliverableIngredients,
  }) =>
      RecipesModel(
        id: id ?? this.id,
        fats: fats ?? this.fats,
        name: name ?? this.name,
        time: time ?? this.time,
        image: image ?? this.image,
        weeks: weeks ?? this.weeks,
        carbos: carbos ?? this.carbos,
        fibers: fibers ?? this.fibers,
        rating: rating ?? this.rating,
        country: country ?? this.country,
        ratings: ratings ?? this.ratings,
        calories: calories ?? this.calories,
        headline: headline ?? this.headline,
        keywords: keywords ?? this.keywords,
        products: products ?? this.products,
        proteins: proteins ?? this.proteins,
        favorites: favorites ?? this.favorites,
        difficulty: difficulty ?? this.difficulty,
        description: description ?? this.description,
        highlighted: highlighted ?? this.highlighted,
        ingredients: ingredients ?? this.ingredients,
        incompatibilities: incompatibilities ?? this.incompatibilities,
        deliverableIngredients: deliverableIngredients ?? this.deliverableIngredients,
        undeliverableIngredients: undeliverableIngredients ?? this.undeliverableIngredients,
      );

  factory RecipesModel.fromJson(Map<String, dynamic> json) => RecipesModel(
        id: json['id'] as String?,
        fats: json['fats'] as String?,
        name: json['name'] as String?,
        time: json['time'] as String?,
        image: json['image'] as String?,
        weeks: json['weeks'] == null ? [] : List<String>.from(json['weeks']!.map((x) => x as String?)),
        carbos: json['carbos'] as String?,
        fibers: json['fibers'] as String?,
        rating: json['rating'] as double?,
        country: json['country'] as String?,
        ratings: json['ratings'] as int?,
        calories: json['calories'] as String?,
        headline: json['headline'] as String?,
        keywords: json['keywords'] == null ? [] : List<String>.from(json['keywords']!.map((x) => x)),
        products: json['products'] == null ? [] : List<String>.from(json['products']!.map((x) => x)),
        proteins: json['proteins'] as String?,
        favorites: json['favorites'] as int?,
        difficulty: json['difficulty'] as int?,
        description: json['description'] as String?,
        highlighted: json['highlighted'] as bool?,
        ingredients: json['ingredients'] == null ? [] : List<String>.from(json['ingredients']!.map((x) => x)),
        incompatibilities: json['incompatibilities'],
        deliverableIngredients: json['deliverable_ingredients'] == null
            ? []
            : List<String>.from(json['deliverable_ingredients']!.map((x) => x)),
        undeliverableIngredients: json['undeliverable_ingredients'] == null
            ? []
            : List<dynamic>.from(json['undeliverable_ingredients']!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fats': fats,
        'name': name,
        'time': time,
        'image': image,
        'weeks': weeks == null ? [] : List<dynamic>.from(weeks!.map((x) => x)),
        'carbos': carbos,
        'fibers': fibers,
        'rating': rating,
        'country': country,
        'ratings': ratings,
        'calories': calories,
        'headline': headline,
        'keywords': keywords == null
            ? []
            : List<dynamic>.from(
                keywords!.map((x) => x),
              ),
        'products': products == null
            ? []
            : List<dynamic>.from(
                products!.map((x) => x),
              ),
        'proteins': proteins,
        'favorites': favorites,
        'difficulty': difficulty,
        'description': description,
        'highlighted': highlighted,
        'ingredients': ingredients == null
            ? []
            : List<dynamic>.from(
                ingredients!.map((x) => x),
              ),
        'incompatibilities': incompatibilities,
        'deliverable_ingredients': deliverableIngredients == null
            ? []
            : List<dynamic>.from(
                deliverableIngredients!.map((x) => x),
              ),
        'undeliverable_ingredients': undeliverableIngredients == null
            ? []
            : List<dynamic>.from(
                undeliverableIngredients!.map((x) => x),
              ),
      };
}
