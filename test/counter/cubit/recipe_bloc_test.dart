import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nerd_eg_hiring_task/features/recipes/presentation/bloc/recipes_bloc.dart';

void main() {
  group('RecipeBloc', () {
    blocTest<RecipeBloc, RecipeState>(
      'Test is loading state is added',
      build: RecipeBloc.new,
      wait: const Duration(milliseconds: 300),
      act: (bloc) => bloc.add(RecipeFetchingEvent()),
      expect: () => [RecipeLoading(), const RecipeError('Something went wrong')],
    );
  });
}
