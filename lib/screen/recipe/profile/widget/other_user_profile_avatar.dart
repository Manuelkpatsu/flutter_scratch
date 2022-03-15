import 'package:flutter/material.dart';

class OtherUserProfileAvatar extends StatelessWidget {
  final String profileImg;

  const OtherUserProfileAvatar({Key? key, required this.profileImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      right: 0,
      left: 0,
      child: Container(
        width: 80,
        height: 80,
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: DecoratedBox(
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              image: DecorationImage(
                image: AssetImage(profileImg),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
