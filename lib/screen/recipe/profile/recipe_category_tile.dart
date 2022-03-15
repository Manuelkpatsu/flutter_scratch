import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';

import 'widget/recipe_category_name_text.dart';
import 'widget/recipe_category_thumbnail.dart';

class RecipeCategoryTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String thumbnail;
  final String name;

  const RecipeCategoryTile({
    Key? key,
    required this.onTap,
    required this.thumbnail,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: CustomColor.buttonShadowColor,
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            RecipeCategoryThumbnail(thumbnail: thumbnail),
            RecipeCategoryNameText(name: name),
          ],
        ),
      ),
    );
  }
}
