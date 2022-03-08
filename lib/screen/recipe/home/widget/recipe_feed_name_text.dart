import 'package:flutter/material.dart';
import 'package:scratch/theme/styles.dart';

class RecipeFeedNameText extends StatelessWidget {
  final String name;

  const RecipeFeedNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: cardItemStyle,
      ),
    );
  }
}
