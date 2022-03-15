import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';

class LogoutAlertDialog extends StatelessWidget {
  final VoidCallback? onCancelPressed;
  final VoidCallback? onYesPressed;

  const LogoutAlertDialog({
    Key? key,
    required this.onCancelPressed,
    required this.onYesPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Do you want to exit this application?'),
      actions: <Widget>[
        TextButton(
          onPressed: onCancelPressed,
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: CustomColor.primaryColor,
            ),
          ),
        ),
        TextButton(
          onPressed: onYesPressed,
          child: const Text(
            'Yes',
            style: TextStyle(
              color: CustomColor.redColor,
            ),
          ),
        ),
      ],
    );
  }
}
