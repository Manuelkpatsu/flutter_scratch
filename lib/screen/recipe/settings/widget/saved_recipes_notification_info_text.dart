import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class SavedRecipesNotificationInfoText extends StatelessWidget {
  final void Function()? onTap;

  const SavedRecipesNotificationInfoText({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: RichText(
        text: TextSpan(
          text:
              "If disabled, you won’t be able to see recipes saved by other profiles. Leave this enabled to share your collected recipes to others. ",
          style: captionStyle.copyWith(
            color: CustomColor.grayTextColor,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          ),
          children: <TextSpan>[
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: "Why this matter?",
              style: captionStyle.copyWith(
                color: CustomColor.primaryColor,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
