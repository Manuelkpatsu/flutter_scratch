import 'package:flutter/material.dart';

class RecipeThumbnail extends StatelessWidget {
  final String thumbnail;

  const RecipeThumbnail({Key? key, required this.thumbnail}) : super(key: key);

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
