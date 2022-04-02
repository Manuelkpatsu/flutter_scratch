import 'package:flutter/material.dart';
import 'package:scratch/model/ingredient.dart';
import 'package:scratch/screen/widget/custom_divider.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

import 'cooking_mode_ingredient_tile.dart';

class IngredientsBottomSheetContent extends StatelessWidget {
  final VoidCallback onPressed;
  final List<Ingredient> ingredients;

  const IngredientsBottomSheetContent({
    Key? key,
    required this.onPressed,
    required this.ingredients,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CloseButton(),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  'Ingredients',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: headingThreeStyle.copyWith(
                    color: CustomColor.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const CustomDivider(color: CustomColor.dividerColor),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: ingredients.length,
              itemBuilder: (context, index) {
                Ingredient ingredient = ingredients[index];

                return CookingModeIngredientTile(
                  thumbnail: ingredient.thumbnail,
                  name: ingredient.name,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
