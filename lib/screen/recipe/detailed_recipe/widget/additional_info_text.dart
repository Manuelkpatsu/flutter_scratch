import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class AdditionalInfoText extends StatelessWidget {
  final String info;

  const AdditionalInfoText({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: bodyStyle.copyWith(fontWeight: FontWeight.w400),
    );
  }
}
