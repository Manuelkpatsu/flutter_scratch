import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/app_icon_button.dart';
import 'package:scratch/theme/custom_color.dart';

class FavoriteButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool favorite;

  const FavoriteButton({
    Key? key,
    required this.onPressed,
    required this.favorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      icon: favorite ? Icons.favorite_rounded : Icons.favorite_border_outlined,
      onPressed: onPressed,
      color: favorite ? CustomColor.redColor : CustomColor.logoColor,
    );
  }
}
