import 'package:flutter/material.dart';

import 'widget/ingredient_name_text.dart';
import 'widget/ingredient_thumbnail.dart';

class IngredientTile extends StatelessWidget {
  final String thumbnail;
  final String name;
  final EdgeInsetsGeometry padding;

  const IngredientTile({
    Key? key,
    required this.thumbnail,
    required this.name,
    this.padding = const EdgeInsets.only(left: 16, right: 16, bottom: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IngredientThumbnail(thumbnail: thumbnail),
          const SizedBox(width: 15),
          IngredientNameText(name: name),
        ],
      ),
    );
  }
}
