import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class IngredientTabBar extends StatelessWidget {
  final TabController tabController;
  final List<Widget> tabs;

  const IngredientTabBar({
    Key? key,
    required this.tabController,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: TabBar(
        tabs: tabs,
        controller: tabController,
        labelColor: CustomColor.textColor,
        isScrollable: true,
        unselectedLabelColor: CustomColor.lightGrayTextColor,
        unselectedLabelStyle: headingFourStyle.copyWith(
          color: CustomColor.lightGrayTextColor,
          fontSize: 16,
        ),
        labelStyle: headingFourStyle.copyWith(fontSize: 16),
        indicator: const BoxDecoration(),
        indicatorColor: Colors.transparent,
      ),
    );
  }
}
