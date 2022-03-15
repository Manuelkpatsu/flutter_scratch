import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';

class OtherUserProfileBackgroundThumbnail extends StatelessWidget {
  final String thumbnail;

  const OtherUserProfileBackgroundThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          CustomColor.profileOverColor,
          CustomColor.profileOverColor,
        ]),
        image: DecorationImage(
          image: AssetImage(thumbnail),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
    );
  }
}
