import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class PushNotificationsText extends StatelessWidget {
  const PushNotificationsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Push Notifications',
        style: grayTextStyle.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
