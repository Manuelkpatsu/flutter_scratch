import 'package:flutter/material.dart';

class RecipeCategoryThumbnail extends StatelessWidget {
  final String thumbnail;

  const RecipeCategoryThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
      child: Image.asset(
        thumbnail,
        width: MediaQuery.of(context).size.width,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
