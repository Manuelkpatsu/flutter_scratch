import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';

class UserProfileThumbnail extends StatelessWidget {
  final String thumbnail;

  const UserProfileThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(thumbnail),
      radius: 41,
      backgroundColor: CustomColor.lightGrayTextColor,
    );
  }
}
