import 'package:flutter/material.dart';

class SavedRecipeThumbnail extends StatelessWidget {
  final String thumbnail;

  const SavedRecipeThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      thumbnail,
      height: 130,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
