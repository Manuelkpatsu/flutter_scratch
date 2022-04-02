import 'package:flutter/material.dart';

import 'direction_text.dart';
import 'number_bullet.dart';

class DirectionTile extends StatelessWidget {
  final int number;
  final String direction;
  final EdgeInsetsGeometry padding;

  const DirectionTile({
    Key? key,
    required this.number,
    required this.direction,
    this.padding = const EdgeInsets.only(left: 16, right: 16, bottom: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NumberBullet(number: number),
          const SizedBox(width: 15),
          DirectionText(direction: direction),
        ],
      ),
    );
  }
}
