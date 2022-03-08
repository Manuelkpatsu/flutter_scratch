import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class RecipeFeedDescriptionText extends StatelessWidget {
  final String description;

  const RecipeFeedDescriptionText({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: subtleTextStyle,
      ),
    );
  }
}
