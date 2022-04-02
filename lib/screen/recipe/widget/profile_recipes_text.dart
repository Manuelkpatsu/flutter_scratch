import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scratch/theme/styles.dart';

class ProfileRecipesText extends StatelessWidget {
  final int totalNumberOfRecipes;

  const ProfileRecipesText({Key? key, required this.totalNumberOfRecipes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var recipes =
        NumberFormat.compactCurrency(symbol: '').format(totalNumberOfRecipes);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          recipes,
          textAlign: TextAlign.center,
          style: bodyStyle,
        ),
        Text(
          'recipes',
          textAlign: TextAlign.center,
          style: grayTextStyle.copyWith(fontSize: 10, height: 2.2),
        ),
      ],
    );
  }
}
