import 'package:flutter/material.dart';

class SignUpBackground extends StatelessWidget {
  final String image;
  const SignUpBackground({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.topCenter,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(80)),
        child: Image.asset(
          image,
          height: 285,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
