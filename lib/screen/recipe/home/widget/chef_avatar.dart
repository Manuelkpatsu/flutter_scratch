import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';

class ChefAvatar extends StatelessWidget {
  final String thumbnail;

  const ChefAvatar({Key? key, required this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: CustomColor.lighterGreyColor,
      backgroundImage: AssetImage(
        thumbnail,
      ),
    );
  }
}
