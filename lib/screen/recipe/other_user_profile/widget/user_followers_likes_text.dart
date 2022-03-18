import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scratch/theme/styles.dart';

class UserFollowersLikesText extends StatelessWidget {
  final int totalNumberOfFollowers;
  final int totalNumberOfLikes;

  const UserFollowersLikesText({
    Key? key,
    required this.totalNumberOfFollowers,
    required this.totalNumberOfLikes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var followers =
        NumberFormat.compactCurrency(symbol: '').format(totalNumberOfFollowers);
    var likes =
        NumberFormat.compactCurrency(symbol: '').format(totalNumberOfLikes);

    return Text(
      "$followers followers • $likes likes",
      style: grayTextStyle,
    );
  }
}
