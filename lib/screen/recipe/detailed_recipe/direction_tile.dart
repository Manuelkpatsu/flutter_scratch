import 'package:flutter/material.dart';

import 'widget/direction_text.dart';
import 'widget/number_bullet.dart';

class DirectionTile extends StatelessWidget {
  final int number;
  final String direction;
  const DirectionTile({
    Key? key,
    required this.number,
    required this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
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
