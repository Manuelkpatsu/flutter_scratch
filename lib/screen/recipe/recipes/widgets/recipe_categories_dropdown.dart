import 'package:flutter/material.dart';
import 'package:scratch/model/recipe_category.dart';
import 'package:scratch/theme/custom_color.dart';

class RecipeCategoriesDropdown extends StatelessWidget {
  final List<RecipeCategory> recipeCategories;
  final void Function(dynamic)? onChanged;
  final dynamic value;

  const RecipeCategoriesDropdown({
    Key? key,
    required this.recipeCategories,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: CustomColor.strokeColor, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide:
                const BorderSide(color: CustomColor.strokeColor, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: CustomColor.strokeColor, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        hint: const Text('Select Recipe Category'),
        value: value,
        dropdownColor: Colors.white,
        items: recipeCategories.map((recipeCategory) {
          return DropdownMenuItem<RecipeCategory>(
            child: Text(recipeCategory.name),
            value: recipeCategory,
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
