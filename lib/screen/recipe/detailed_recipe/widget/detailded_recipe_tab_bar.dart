import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class DetailedRecipeTabBar extends StatelessWidget {
  final List<Widget> tabs;

  const DetailedRecipeTabBar({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: tabs,
      labelColor: CustomColor.textColor,
      isScrollable: true,
      unselectedLabelColor: CustomColor.lightGrayTextColor,
      unselectedLabelStyle: headingFourStyle.copyWith(
        color: CustomColor.lightGrayTextColor,
        fontSize: 14,
      ),
      labelStyle: headingFourStyle.copyWith(fontSize: 14),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: CustomColor.primaryColor,
      indicatorWeight: 3,
    );
  }
}
