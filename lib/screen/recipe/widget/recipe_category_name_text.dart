import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class RecipeCategoryNameText extends StatelessWidget {
  final String name;

  const RecipeCategoryNameText({Key? key, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Text(
        name,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: leadStyle.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
