import 'package:flutter/material.dart';
import 'package:scratch/model/recipe.dart';
import 'package:scratch/screen/recipe/detailed_recipe/detailed_recipe_screen.dart';

import '../recipe_search_tile.dart';

class TabBarListView extends StatelessWidget {
  final List<Recipe> recipes;

  const TabBarListView({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 16),
        itemCount: recipes.length,
        itemBuilder: (context, int index) {
          Recipe recipe = recipes[index];

          return RecipeSearchTile(
            thumbnail: recipe.thumbnail,
            name: recipe.name,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const DetailedRecipeScreen(),
              ),
            ),
          );
        },
      ),
    );
  }
}
