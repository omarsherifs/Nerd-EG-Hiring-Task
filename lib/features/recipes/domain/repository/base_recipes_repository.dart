import 'package:dartz/dartz.dart';
import 'package:nerd_eg_hiring_task/core/errors/error.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';

abstract class BaseRecipeRepository {
  Future<Either<List<RecipesEntity>, AppError>> getRecipes();
}
