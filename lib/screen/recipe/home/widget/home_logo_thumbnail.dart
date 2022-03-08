import 'package:flutter/material.dart';

class HomeLogoThumbnail extends StatelessWidget {
  final String thumbnail;

  const HomeLogoThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      thumbnail,
      height: 26,
      width: 18,
      fit: BoxFit.cover,
    );
  }
}
