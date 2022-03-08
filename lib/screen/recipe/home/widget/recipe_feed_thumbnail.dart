import 'package:flutter/material.dart';

class RecipeFeedThumbnail extends StatelessWidget {
  final String thumbnail;

  const RecipeFeedThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
      child: Image.asset(
        thumbnail,
        width: MediaQuery.of(context).size.width,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
