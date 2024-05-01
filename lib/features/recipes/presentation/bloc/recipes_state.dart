part of 'recipes_bloc.dart';

abstract class RecipeState extends Equatable {
  const RecipeState();
}

class RecipeInitial extends RecipeState {
  @override
  List<Object> get props => [];
}

class RecipeLoading extends RecipeState {
  @override
  List<Object> get props => [];
}

class RecipeSuccess extends RecipeState {
  const RecipeSuccess(this.recipes);
  final List<RecipesEntity> recipes;

  @override
  List<Object> get props => [recipes];
}

class RecipeError extends RecipeState {
  const RecipeError(this.errorMessage);
  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}
