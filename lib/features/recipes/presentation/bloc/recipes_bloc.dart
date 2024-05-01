import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nerd_eg_hiring_task/core/services/dependacny_injection_service.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/usecase/get_all_recipes_usecase.dart';

part 'recipes_event.dart';
part 'recipes_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(RecipeInitial()) {
    on<RecipeFetchingEvent>(_onRecipeFetchingEvent);
  }

  Future<void> _onRecipeFetchingEvent(
    RecipeFetchingEvent event,
    Emitter<RecipeState> emit,
  ) async {
    try {
      emit(RecipeLoading());
      final result = await sl<GetRecipeUseCase>().call();
      result.fold(
        (l) {
          emit(RecipeSuccess(l));
        },
        (r) {
          emit(RecipeError(r.message));
        },
      );
    } catch (e) {
      emit(const RecipeError('Something went wrong'));
    }
  }
}
