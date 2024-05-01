import 'package:equatable/equatable.dart';

class RecipesEntity extends Equatable {
  const RecipesEntity({
    required this.id,
    this.fats,
    this.name,
    this.time,
    this.image,
    required this.weeks,
    this.carbos,
    this.fibers,
    this.rating,
    this.country,
    this.ratings,
    this.calories,
    this.headline,
    required this.keywords,
    required this.products,
    this.proteins,
    this.favorites,
    this.difficulty,
    this.description,
    this.highlighted,
    required this.ingredients,
    required this.deliverableIngredients,
    required this.undeliverableIngredients,
  });
  final String id;
  final String? fats;
  final String? name;
  final String? time;
  final String? image;
  final List<String> weeks;
  final String? carbos;
  final String? fibers;
  final num? rating;
  final String? country;
  final int? ratings;
  final String? calories;
  final String? headline;
  final List<String> keywords;
  final List<String> products;
  final String? proteins;
  final int? favorites;
  final int? difficulty;
  final String? description;
  final bool? highlighted;
  final List<String> ingredients;
  final List<String> deliverableIngredients;
  final List<String> undeliverableIngredients;

  @override
  List<Object?> get props => [
        id,
        fats,
        name,
        time,
        image,
        weeks,
        carbos,
        fibers,
        rating,
        country,
        ratings,
        calories,
        headline,
        keywords,
        products,
        proteins,
        favorites,
        difficulty,
        description,
        highlighted,
        ingredients,
        deliverableIngredients,
        undeliverableIngredients,
      ];
}
