import 'package:nerd_eg_hiring_task/core/network/api_caller.dart';
import 'package:nerd_eg_hiring_task/features/recipes/data/data_sources/base_recipe_data_source.dart';
import 'package:nerd_eg_hiring_task/features/recipes/data/models/recipe_model.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';

class RemoteRecipeDataSource implements BaseRecipeDataSource {
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
  Future<List<RecipesModel>> getRecipes() async {
    final recipes = <RecipesModel>[];
    final response = await ApiCaller().getData(NetworkConstants.recipesPath);
    final data = response.data;
    data.forEach((element) {
      recipes.add(RecipesModel.fromJson(data as Map<String, dynamic>));
    });
    return recipes;
  }

  @override
  Future<bool> removeFavoriteRecipes(int id) {
    // TODO: implement removeFavoriteRecipes
    throw UnimplementedError();
  }
}
