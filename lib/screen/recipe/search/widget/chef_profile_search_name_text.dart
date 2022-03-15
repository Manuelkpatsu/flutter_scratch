import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class ChefProfileSearchNameText extends StatelessWidget {
  final String name;

  const ChefProfileSearchNameText({Key? key, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        name,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: leadStyle.copyWith(fontSize: 14),
      ),
    );
  }
}
