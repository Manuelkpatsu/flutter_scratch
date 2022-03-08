import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class CreatedTimeText extends StatelessWidget {
  final String createdAt;

  const CreatedTimeText({Key? key, required this.createdAt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(createdAt, style: captionStyle);
  }
}
