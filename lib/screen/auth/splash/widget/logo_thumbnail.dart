import 'package:flutter/material.dart';

class LogoThumbnail extends StatelessWidget {
  final String thumbnail;

  const LogoThumbnail({Key? key, required this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      thumbnail,
      width: 18,
      height: 26,
      fit: BoxFit.cover,
    );
  }
}
