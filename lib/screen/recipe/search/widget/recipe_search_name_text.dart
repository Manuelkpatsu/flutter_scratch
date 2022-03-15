import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class RecipeSearchNameText extends StatelessWidget {
  final String name;

  const RecipeSearchNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: leadStyle,
    );
  }
}
