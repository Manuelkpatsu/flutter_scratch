import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/app_icon_button.dart';
import 'package:scratch/theme/custom_color.dart';

class EditProfileButton extends AppIconButton {
  const EditProfileButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          onPressed: onPressed,
          icon: Icons.edit_outlined,
          color: CustomColor.logoColor,
        );
}
