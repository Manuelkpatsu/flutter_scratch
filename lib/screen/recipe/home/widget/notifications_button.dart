import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/app_icon_button.dart';
import 'package:scratch/theme/custom_color.dart';

class NotificationsButton extends AppIconButton {
  const NotificationsButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          onPressed: onPressed,
          icon: Icons.notifications_outlined,
          color: CustomColor.logoColor,
        );
}
