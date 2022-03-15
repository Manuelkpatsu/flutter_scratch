import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class EditProfilePictureButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const EditProfilePictureButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          'Edit Profile Picture',
          style: buttonStyle.copyWith(
            fontWeight: FontWeight.w700,
            color: CustomColor.primaryColor,
          ),
        ),
      ),
    );
  }
}
