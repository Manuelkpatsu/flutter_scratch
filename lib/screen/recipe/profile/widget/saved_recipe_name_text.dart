import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class SavedRecipeNameText extends StatelessWidget {
  final String name;

  const SavedRecipeNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: leadStyle.copyWith(fontWeight: FontWeight.w400),
    );
  }
}
