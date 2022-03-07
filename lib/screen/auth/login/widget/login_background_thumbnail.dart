import 'package:flutter/material.dart';

class LoginBackgroundThumbnail extends StatelessWidget {
  final String image;

  const LoginBackgroundThumbnail({Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(80)),
      child: Image.asset(
        image,
        height: 285,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
