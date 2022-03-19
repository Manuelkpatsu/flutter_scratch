import 'package:flutter/material.dart';

import 'widgets/recipe_duration_ingredients_text.dart';
import 'widgets/recipe_name_text.dart';
import 'widgets/recipe_thumbnail.dart';
import 'widgets/watch_cooking_button.dart';

class RecipeTile extends StatelessWidget {
  final String thumbnail;
  final String name;
  final int duration;
  final int totalNumberOfIngredients;
  final VoidCallback? onPressed;
  final VoidCallback? onWatchCookingPressed;

  const RecipeTile({
    Key? key,
    required this.thumbnail,
    required this.name,
    required this.duration,
    required this.totalNumberOfIngredients,
    required this.onPressed,
    required this.onWatchCookingPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeThumbnail(thumbnail: thumbnail),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RecipeNameText(name: name),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RecipeDurationIngredientsText(
                        duration: duration,
                        ingredients: totalNumberOfIngredients,
                      ),
                      WatchCookingButton(onPressed: onWatchCookingPressed),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
