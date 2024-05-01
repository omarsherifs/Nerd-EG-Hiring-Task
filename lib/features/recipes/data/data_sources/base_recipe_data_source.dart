import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';

abstract class BaseRecipeDataSource {
  Future<List<RecipesEntity>> getRecipes();
  Future<List<RecipesEntity>> getFavRecipes();
  Future<bool> addToFavoriteRecipes(int id);
  Future<bool> removeFavoriteRecipes(int id);
}
