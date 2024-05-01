import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';

class RecipesModel extends RecipesEntity {
  const RecipesModel({
    required super.id,
    super.fats,
    super.name,
    super.time,
    super.image,
    required super.weeks,
    super.carbos,
    super.fibers,
    super.rating,
    super.country,
    super.ratings,
    super.calories,
    super.headline,
    required super.keywords,
    required super.products,
    super.proteins,
    super.favorites,
    super.difficulty,
    super.description,
    super.highlighted,
    required super.ingredients,
    required super.deliverableIngredients,
    required super.undeliverableIngredients,
  });

  factory RecipesModel.fromJson(Map<String, dynamic> json) => RecipesModel(
        id: json['id'] as String,
        fats: json['fats'] as String?,
        name: json['name'] as String?,
        time: json['time'] as String?,
        image: json['image'] as String?,
        weeks: json['weeks'] == null
            ? []
            : List<String>.from(
                (json['weeks'] as List).map((x) => x as String?),
              ),
        carbos: json['carbos'] as String?,
        fibers: json['fibers'] as String?,
        rating: json['rating'] as num?,
        country: json['country'] as String?,
        ratings: json['ratings'] as int?,
        calories: json['calories'] as String?,
        headline: json['headline'] as String?,
        keywords: json['keywords'] == null
            ? []
            : List<String>.from(
                (json['keywords'] as List).map((x) => x),
              ),
        products: json['products'] == null
            ? []
            : List<String>.from(
                (json['products'] as List).map((x) => x),
              ),
        proteins: json['proteins'] as String?,
        favorites: json['favorites'] as int?,
        difficulty: json['difficulty'] as int?,
        description: json['description'] as String?,
        highlighted: json['highlighted'] as bool?,
        ingredients: json['ingredients'] == null
            ? []
            : List<String>.from(
                (json['ingredients'] as List).map((x) => x),
              ),
        deliverableIngredients: json['deliverable_ingredients'] == null
            ? []
            : List<String>.from(
                (json['deliverable_ingredients'] as List).map((x) => x),
              ),
        undeliverableIngredients: json['undeliverable_ingredients'] == null
            ? []
            : List<String>.from(
                (json['undeliverable_ingredients'] as List).map((x) => x),
              ),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fats': fats,
        'name': name,
        'time': time,
        'image': image,
        'weeks': List<dynamic>.from(weeks.map((x) => x)),
        'carbos': carbos,
        'fibers': fibers,
        'rating': rating,
        'country': country,
        'ratings': ratings,
        'calories': calories,
        'headline': headline,
        'keywords': List<dynamic>.from(
          keywords.map((x) => x),
        ),
        'products': List<dynamic>.from(
          products.map((x) => x),
        ),
        'proteins': proteins,
        'favorites': favorites,
        'difficulty': difficulty,
        'description': description,
        'highlighted': highlighted,
        'ingredients': List<dynamic>.from(
          ingredients.map((x) => x),
        ),
        'deliverable_ingredients': List<dynamic>.from(
          deliverableIngredients.map((x) => x),
        ),
        'undeliverable_ingredients': List<dynamic>.from(
          undeliverableIngredients.map((x) => x),
        ),
      };
}
