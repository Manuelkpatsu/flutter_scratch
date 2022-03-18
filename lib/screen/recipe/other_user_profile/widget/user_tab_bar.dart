import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class UserTabBar extends StatelessWidget {
  final TabController tabController;
  final List<Widget> tabs;

  const UserTabBar({
    Key? key,
    required this.tabController,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: TabBar(
        tabs: tabs,
        controller: tabController,
        labelColor: CustomColor.textColor,
        isScrollable: false,
        unselectedLabelColor: CustomColor.lightGrayTextColor,
        unselectedLabelStyle: headingFourStyle.copyWith(
          color: CustomColor.lightGrayTextColor,
          fontSize: 16,
        ),
        labelStyle: headingFourStyle.copyWith(fontSize: 16),
        indicatorColor: CustomColor.primaryColor,
        indicatorWeight: 3,
        padding: EdgeInsets.zero,
        labelPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
      ),
    );
  }
}
