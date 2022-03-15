import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class ChangePassword extends StatelessWidget {
  final VoidCallback? onPressed;

  const ChangePassword({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      dense: true,
      title: Text(
        'Change Password',
        style: leadStyle.copyWith(fontWeight: FontWeight.w400),
      ),
      trailing: const Icon(
        Icons.chevron_right_outlined,
        color: CustomColor.logoColor,
      ),
    );
  }
}
