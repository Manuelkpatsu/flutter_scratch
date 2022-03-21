import 'package:flutter/material.dart';

class GalleryThumbnail extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;

  const GalleryThumbnail({
    Key? key,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        image,
        width: MediaQuery.of(context).size.width,
        height: 100,
        fit: BoxFit.cover,
        colorBlendMode: BlendMode.softLight,
      ),
    );
  }
}
