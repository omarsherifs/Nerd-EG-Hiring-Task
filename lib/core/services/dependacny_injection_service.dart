import 'package:get_it/get_it.dart';
import 'package:nerd_eg_hiring_task/features/recipes/data/data_sources/base_recipe_data_source.dart';
import 'package:nerd_eg_hiring_task/features/recipes/data/data_sources/remote_recipe_data_source.dart';
import 'package:nerd_eg_hiring_task/features/recipes/data/repository/recipe_repository_impl.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/repository/base_recipes_repository.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/usecase/get_all_recipes_usecase.dart';

final sl = GetIt.instance;

class DependencyInjectionServices {
  void init() {
    initDependencies();
  }

  void initDependencies() {
    // init Repositories
    sl
      ..registerLazySingleton<BaseRecipeRepository>(
        () => RecipeRepository(sl()),
      )

      // init Use Cases
      ..registerLazySingleton<GetRecipeUseCase>(
        () => GetRecipeUseCase(
          sl(),
        ),
      )

      // init Data Sources
      ..registerLazySingleton<BaseRecipeDataSource>(
        RemoteRecipeDataSource.new,
      );
  }
}
