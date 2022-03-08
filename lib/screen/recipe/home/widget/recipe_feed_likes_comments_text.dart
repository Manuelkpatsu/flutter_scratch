import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class RecipeFeedLikesCommentsText extends StatelessWidget {
  final int likes;
  final int comments;

  const RecipeFeedLikesCommentsText({
    Key? key,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        text: TextSpan(
          text: '$likes likes ',
          style: grayTextStyle,
          children: [
            TextSpan(
              text: '•',
              style: grayTextStyle.copyWith(color: CustomColor.strokeColor),
            ),
            TextSpan(
              text: ' $comments comments',
            ),
          ],
        ),
      ),
    );
  }
}
