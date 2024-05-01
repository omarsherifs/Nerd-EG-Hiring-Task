part of 'recipes_bloc.dart';

abstract class RecipeEvent extends Equatable {
  const RecipeEvent();
}

class RecipeFetchingEvent extends RecipeEvent {
  @override
  List<Object> get props => [];
}
