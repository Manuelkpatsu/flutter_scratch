import 'package:flutter/material.dart';

import '../widget/ingredient_tile.dart';

class CookingModeIngredientTile extends IngredientTile {
  const CookingModeIngredientTile({
    Key? key,
    required String thumbnail,
    required String name,
  }) : super(
          key: key,
          thumbnail: thumbnail,
          name: name,
          padding: const EdgeInsets.only(bottom: 15),
        );
}
