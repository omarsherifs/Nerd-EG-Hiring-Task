import 'package:nerd_eg_hiring_task/features/recipes/data/data_sources/base_recipe_data_source.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';

class CachedRecipeDataSource implements BaseRecipeDataSource {
  @override
  Future<bool> addToFavoriteRecipes(int id) {
    // TODO: implement addToFavoriteRecipes
    throw UnimplementedError();
  }

  @override
  Future<List<RecipesEntity>> getFavRecipes() {
    // TODO: implement getFavRecipes
    throw UnimplementedError();
  }

  @override
  Future<List<RecipesEntity>> getRecipes() {
    // TODO: implement getRecipes
    throw UnimplementedError();
  }

  @override
  Future<bool> removeFavoriteRecipes(int id) {
    // TODO: implement removeFavoriteRecipes
    throw UnimplementedError();
  }
}
