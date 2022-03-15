import 'package:flutter/material.dart';

import 'widget/recipe_search_name_text.dart';
import 'widget/recipe_search_thumbnail.dart';

class RecipeSearchTile extends StatelessWidget {
  final String thumbnail;
  final String name;
  final void Function()? onTap;

  const RecipeSearchTile({
    Key? key,
    required this.thumbnail,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: onTap,
        child: Ink(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecipeSearchThumbnail(thumbnail: thumbnail),
              const SizedBox(height: 10),
              RecipeSearchNameText(name: name),
            ],
          ),
        ),
      ),
    );
  }
}
