import 'package:flutter/material.dart';

class RecipeSearchThumbnail extends StatelessWidget {
  final String thumbnail;

  const RecipeSearchThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      thumbnail,
      height: 140,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
