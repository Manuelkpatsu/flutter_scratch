import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scratch/theme/styles.dart';

class FollowersRecipesText extends StatelessWidget {
  final int totalNumberOfFollowers;
  final int totalNumberOfRecipes;

  const FollowersRecipesText({
    Key? key,
    required this.totalNumberOfFollowers,
    required this.totalNumberOfRecipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var followers =
        NumberFormat.compactCurrency(symbol: '').format(totalNumberOfFollowers);
    var recipes =
        NumberFormat.decimalPattern('hi').format(totalNumberOfRecipes);
    return Text(
      "$followers Followers • $recipes Recipes",
      style: leadStyle,
    );
  }
}
