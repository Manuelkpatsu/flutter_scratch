import 'package:flutter/widgets.dart';
import 'package:scratch/theme/styles.dart';

class MyRecipesText extends StatelessWidget {
  const MyRecipesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'My Recipes',
      style: headingThreeStyle,
    );
  }
}
