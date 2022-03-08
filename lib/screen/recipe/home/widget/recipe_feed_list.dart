import 'package:flutter/material.dart';
import 'package:scratch/model/recipe.dart';

import '../recipe_feed_tile.dart';
import 'save_to_cookbook_dialog.dart';

class RecipeFeedList extends StatelessWidget {
  final List<Recipe> recipes;
  final List<String> cookbooks;

  const RecipeFeedList({
    Key? key,
    required this.recipes,
    required this.cookbooks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: recipes.length,
      itemBuilder: (context, int index) {
        final Recipe recipe = recipes[index];

        return RecipeFeedTile(
          thumbnail: recipe.thumbnail,
          onTap: () {},
          chefThumbnail: recipe.chefThumbnail,
          chefName: recipe.chefName,
          createdAt: recipe.createdAt,
          name: recipe.name,
          favorite: recipe.favorite,
          description: recipe.description,
          likes: recipe.numberOfLikes,
          comments: recipe.numberOfComments,
          openDialog: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SaveToCookbookDialog(
                  cookbooks: cookbooks,
                  addNewCookbook: () => Navigator.of(context).pop(),
                  closeDialog: () => Navigator.of(context).pop(),
                  addRecipeToCookbook: () => Navigator.of(context).pop(),
                );
              },
            );
          },
        );
      },
    );
  }
}
