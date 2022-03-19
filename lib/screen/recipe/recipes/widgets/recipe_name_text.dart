import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class RecipeNameText extends StatelessWidget {
  final String name;

  const RecipeNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: cardItemStyle,
    );
  }
}
