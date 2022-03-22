import 'package:flutter/widgets.dart';
import 'package:scratch/theme/styles.dart';

class CookingModeText extends StatelessWidget {
  const CookingModeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Cooking Mode',
        style: headingThreeStyle,
      ),
    );
  }
}
