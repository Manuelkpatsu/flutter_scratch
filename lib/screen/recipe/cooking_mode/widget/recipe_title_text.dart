import 'package:flutter/widgets.dart';
import 'package:scratch/theme/styles.dart';

class RecipeTitleText extends StatelessWidget {
  final String title;

  const RecipeTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        title,
        style: headingFourStyle.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
