import 'package:flutter/material.dart';
import 'package:nerd_eg_hiring_task/features/recipes/domain/entity/recipe_entity.dart';

class RecipeDetailsScreen extends StatelessWidget {
  const RecipeDetailsScreen(this._recipeData, {super.key});
  final RecipesEntity _recipeData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_recipeData.image ?? ''),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                '${_recipeData.name} ${_recipeData.headline}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Text(
                'Rating:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              title: Text(
                '★ ${_recipeData.rating ?? 0}(${_recipeData.ratings ?? 0})',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[300],
                ),
              ),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              leading: const Text(
                'Ingredients:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              title: Text(
                '${_recipeData.ingredients.map((e) => e)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[300],
                ),
              ),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              leading: const Text(
                'Country:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              title: SizedBox(
                height: 40,
                width: 40,
                child: Image.network(
                  'https://flagsapi.com/${_recipeData.country}/flat/64.png',
                ),
              ),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              leading: const Text(
                'Fats:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              title: Text(
                '${_recipeData.fats}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[300],
                ),
              ),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              leading: const Text(
                'Carbos:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              title: Text(
                '${_recipeData.carbos}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[300],
                ),
              ),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              leading: const Text(
                'Proteins:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              title: Text(
                '${_recipeData.proteins}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[300],
                ),
              ),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              leading: const Text(
                'Fibers:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              title: Text(
                '${_recipeData.fibers}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[300],
                ),
              ),
            ),
            ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              leading: const Text(
                'Description:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              title: Text(
                '${_recipeData.description}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[300],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.favorite),
        label: const Text('Add To List'),
      ),
    );
  }
}
