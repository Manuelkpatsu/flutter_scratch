import 'package:flutter/material.dart';

class RecipeThumbnail extends StatelessWidget {
  final String thumbnail;

  const RecipeThumbnail({Key? key, required this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
      child: Image.asset(
        thumbnail,
        width: MediaQuery.of(context).size.width,
        height: 110,
        fit: BoxFit.cover,
      ),
    );
  }
}
