import 'package:flutter/material.dart';

import '../widget/ingredient_tile.dart';

class DetailedRecipeIngredientTile extends IngredientTile {
  const DetailedRecipeIngredientTile({
    Key? key,
    required String thumbnail,
    required String name,
  }) : super(
          key: key,
          thumbnail: thumbnail,
          name: name,
        );
}
