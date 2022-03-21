import 'package:flutter/material.dart';
import 'package:scratch/model/recipe.dart';
import 'package:scratch/screen/recipe/detailed_recipe/detailed_recipe_screen.dart';

import '../recipe_feed_tile.dart';

class RecipeFeedList extends StatelessWidget {
  final List<Recipe> recipes;

  const RecipeFeedList({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: recipes.length,
      itemBuilder: (context, int index) {
        final Recipe recipe = recipes[index];

        return RecipeFeedTile(
          thumbnail: recipe.thumbnail,
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const DetailedRecipeScreen(),
            ),
          ),
          chefThumbnail: recipe.chefThumbnail,
          chefName: recipe.chefName,
          createdAt: recipe.createdAt,
          name: recipe.name,
          favorite: recipe.favorite,
          description: recipe.description,
          likes: recipe.numberOfLikes,
          comments: recipe.numberOfComments,
        );
      },
    );
  }
}
