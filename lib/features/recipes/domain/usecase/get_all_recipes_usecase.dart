import 'package:dartz/dartz.dart';
import 'package:nerd_eg_hiring_task/core/errors/error.dart';
import 'package:nerd_eg_hiring_task/core/usecases/usecases.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/repository/base_recipes_repository.dart';

class GetRecipeUseCase extends BaseUseCase<List<RecipesEntity>> {
  GetRecipeUseCase(
    this._baseRecipeRepository,
  );
  BaseRecipeRepository _baseRecipeRepository;

  @override
  Future<Either<List<RecipesEntity>, AppError>> call() async {
    return _baseRecipeRepository.getRecipes();
  }
}
