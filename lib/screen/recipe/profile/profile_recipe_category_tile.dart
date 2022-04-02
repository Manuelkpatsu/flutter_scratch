import 'package:flutter/material.dart';

import '../widget/recipe_category_tile.dart';

class ProfileRecipeCategoryTile extends RecipeCategoryTile {
  const ProfileRecipeCategoryTile({
    Key? key,
    required VoidCallback? onTap,
    required String thumbnail,
    required String name,
  }) : super(
          key: key,
          onTap: onTap,
          thumbnail: thumbnail,
          name: name,
        );
}
