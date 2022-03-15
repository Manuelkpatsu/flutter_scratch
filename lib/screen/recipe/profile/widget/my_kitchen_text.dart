import 'package:flutter/widgets.dart';
import 'package:scratch/theme/styles.dart';

class MyKitchenText extends StatelessWidget {
  const MyKitchenText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'My Kitchen',
      style: headingThreeStyle,
    );
  }
}
