import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class CookbookTile extends StatelessWidget {
  final String cookbook;
  final VoidCallback? onPressed;

  const CookbookTile({
    Key? key,
    required this.cookbook,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        highlightColor: CustomColor.lightPrimaryColor,
      ),
      child: ListTile(
        title: Text(cookbook, style: bodyStyle),
        onTap: onPressed,
        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      ),
    );
  }
}
