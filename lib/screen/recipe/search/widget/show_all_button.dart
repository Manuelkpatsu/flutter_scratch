import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class ShowAllButton extends StatelessWidget {
  final int total;
  final VoidCallback? onPressed;

  const ShowAllButton({Key? key, required this.total, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        'show all ($total+)',
        style: buttonStyle.copyWith(color: CustomColor.primaryColor),
      ),
    );
  }
}
