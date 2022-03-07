import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String image;

  const BackgroundImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(255, 255, 255, 0.0001),
            Color.fromRGBO(255, 255, 255, 0.0001),
          ],
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
          alignment: Alignment.bottomCenter,
          opacity: 0.5,
        ),
      ),
    );
  }
}
