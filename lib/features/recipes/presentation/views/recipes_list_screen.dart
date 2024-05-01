import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nerd_eg_hiring_task/features/recipes/presentation/bloc/recipes_bloc.dart';
import 'package:nerd_eg_hiring_task/features/recipes/presentation/views/recipe_details_screen.dart';
import 'package:nerd_eg_hiring_task/features/recipes/presentation/widgets/recipe_card.dart';

class RecipesListScreen extends StatefulWidget {
  const RecipesListScreen({super.key});

  @override
  State<RecipesListScreen> createState() => _RecipesListScreenState();
}

class _RecipesListScreenState extends State<RecipesListScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RecipeBloc>(context).add(RecipeFetchingEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeBloc, RecipeState>(
      builder: (context, state) {
        return Scaffold(
          body: (state is RecipeLoading)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : (state is RecipeError)
                  ? Center(
                      child: Text(state.errorMessage),
                    )
                  : (state is RecipeSuccess)
                      ? GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                          ),
                          itemCount: state.recipes.length,
                          itemBuilder: (BuildContext context, int index) {
                            final recipeData = state.recipes[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RecipeDetailsScreen(recipeData),
                                  ),
                                );
                              },
                              child: RecipeCard(recipeData),
                            );
                          },
                        )
                      : Container(),
        );
      },
    );
  }
}
