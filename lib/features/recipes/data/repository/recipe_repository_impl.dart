import 'package:dartz/dartz.dart';
import 'package:nerd_eg_hiring_task/core/errors/error.dart';
import 'package:nerd_eg_hiring_task/features/recipes/data/data_sources/base_recipe_data_source.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/repository/base_recipes_repository.dart';

class RecipeRepository extends BaseRecipeRepository {
  RecipeRepository(this._baseRecipeDataSource);
  final BaseRecipeDataSource _baseRecipeDataSource;
  @override
  Future<Either<List<RecipesEntity>, AppError>> getRecipes() async {
    try {
      final data = await _baseRecipeDataSource.getRecipes();
      return Left(data);
    } on Exception catch (ex) {
      return Right(AppError(ex.toString()));
    }
  }
}
