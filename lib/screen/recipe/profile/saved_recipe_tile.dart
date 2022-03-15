import 'package:flutter/material.dart';

import 'widget/saved_recipe_name_text.dart';
import 'widget/saved_recipe_thumbnail.dart';

class SavedRecipeTile extends StatelessWidget {
  final String thumbnail;
  final String name;
  final void Function()? onTap;

  const SavedRecipeTile({
    Key? key,
    required this.thumbnail,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SavedRecipeThumbnail(thumbnail: thumbnail),
            const SizedBox(height: 10),
            SavedRecipeNameText(name: name),
          ],
        ),
      ),
    );
  }
}
