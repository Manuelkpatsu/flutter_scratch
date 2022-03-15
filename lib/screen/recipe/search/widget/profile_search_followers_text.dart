import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scratch/theme/styles.dart';

class ProfileSearchFollowersText extends StatelessWidget {
  final int totalNumberOfFollowers;

  const ProfileSearchFollowersText(
      {Key? key, required this.totalNumberOfFollowers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var followers =
        NumberFormat.compactCurrency(symbol: '').format(totalNumberOfFollowers);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          followers,
          textAlign: TextAlign.center,
          style: bodyStyle,
        ),
        Text(
          'followers',
          textAlign: TextAlign.center,
          style: grayTextStyle.copyWith(fontSize: 10, height: 2.2),
        ),
      ],
    );
  }
}
