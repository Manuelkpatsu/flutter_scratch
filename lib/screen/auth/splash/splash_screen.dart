import 'package:flutter/material.dart';

import 'widget/background_image.dart';
import 'widget/logo_text.dart';
import 'widget/logo_thumbnail.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BackgroundImage(image: 'assets/images/splash-bg-img.png'),
          Positioned(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LogoThumbnail(thumbnail: 'assets/images/logo.png'),
                SizedBox(width: 10),
                LogoText(name: 'scratch'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
