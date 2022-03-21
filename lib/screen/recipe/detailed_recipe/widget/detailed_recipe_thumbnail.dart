import 'package:flutter/material.dart';

class DetailedRecipeThumbnail extends StatelessWidget {
  final String thumbnail;

  const DetailedRecipeThumbnail({
    Key? key,
    required this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.5),
        BlendMode.darken,
      ),
      child: Image.asset(
        thumbnail,
        width: MediaQuery.of(context).size.width,
        height: 300,
        fit: BoxFit.cover,
        colorBlendMode: BlendMode.softLight,
      ),
    );
  }
}
