import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/app_icon_button.dart';
import 'package:scratch/theme/custom_color.dart';

class MessagesButton extends AppIconButton {
  const MessagesButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          onPressed: onPressed,
          icon: Icons.markunread_outlined,
          color: CustomColor.logoColor,
        );
}
