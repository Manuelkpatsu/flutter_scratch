import 'package:flutter/material.dart';

class IngredientThumbnail extends StatelessWidget {
  final String thumbnail;

  const IngredientThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        thumbnail,
        fit: BoxFit.cover,
        width: 50,
        height: 50,
      ),
    );
  }
}
