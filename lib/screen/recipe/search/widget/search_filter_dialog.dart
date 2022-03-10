import 'package:flutter/material.dart';
import 'package:scratch/screen/recipe/search/widget/heading_text.dart';
import 'package:scratch/theme/custom_color.dart';

import 'apply_filter_button.dart';
import 'filter_item_text.dart';
import 'ingredient_text.dart';
import 'multi_select_chip.dart';
import 'serving_time_text.dart';

class SearchFilterDialog extends StatefulWidget {
  const SearchFilterDialog({Key? key}) : super(key: key);

  @override
  State<SearchFilterDialog> createState() => _SearchFilterDialogState();
}

class _SearchFilterDialogState extends State<SearchFilterDialog> {
  double _ingredient = 0.0;
  RangeValues _servingTimeRangeValues = const RangeValues(0, 60);
  final List<String> _filters = [
    "298 recipes",
    "78 recipes",
    "326 tags",
  ];
  List<String> _selectedFilters = [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.topCenter,
      contentPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingText(heading: 'Search Filter'),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FilterItemText(title: 'Ingredients'),
                IngredientText(ingredient: _ingredient.toInt()),
              ],
            ),
            Slider(
              min: 0,
              max: 50,
              divisions: 50,
              inactiveColor: CustomColor.dividerColor,
              activeColor: CustomColor.primaryColor,
              thumbColor: CustomColor.primaryColor,
              value: _ingredient,
              onChanged: (value) {
                setState(() {
                  _ingredient = value;
                });
              },
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FilterItemText(title: 'Serving Time'),
                ServingTimeText(
                  minTime: _servingTimeRangeValues.start.toInt(),
                  maxTime: _servingTimeRangeValues.end.toInt(),
                ),
              ],
            ),
            RangeSlider(
              values: _servingTimeRangeValues,
              max: 60,
              divisions: 60,
              inactiveColor: CustomColor.dividerColor,
              activeColor: CustomColor.primaryColor,
              onChanged: (RangeValues values) {
                setState(() {
                  _servingTimeRangeValues = values;
                });
              },
            ),
            const SizedBox(height: 20),
            const HeadingText(heading: 'Search For'),
            const SizedBox(height: 5),
            MultiSelectChip(
              onSelectionChanged: (selectedList) {
                setState(() {
                  _selectedFilters = selectedList;
                });
              },
              filtersList: _filters,
            ),
            const SizedBox(height: 20),
            ApplyFilterButton(onPressed: () => Navigator.of(context).pop()),
          ],
        ),
      ),
    );
  }
}
