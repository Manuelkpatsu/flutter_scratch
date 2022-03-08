import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class ChefNameText extends StatelessWidget {
  final String chefName;

  const ChefNameText({Key? key, required this.chefName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      chefName,
      style: captionStyle.copyWith(
        color: CustomColor.textColor,
        letterSpacing: 1,
      ),
    );
  }
}
