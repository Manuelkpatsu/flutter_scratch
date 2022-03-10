import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';
import 'package:scratch/theme/styles.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> filtersList;
  final Function(List<String>) onSelectionChanged;

  const MultiSelectChip({
    Key? key,
    required this.onSelectionChanged,
    required this.filtersList,
  }) : super(key: key);

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in widget.filtersList) {
      bool isSelected = selectedChoices.contains(item);

      choices.add(
        Container(
          padding: const EdgeInsets.all(3),
          child: ChoiceChip(
            label: Text(item),
            labelStyle: bodyStyle.copyWith(
              color: isSelected ? Colors.white : CustomColor.primaryColor,
            ),
            shape: isSelected
                ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      color: CustomColor.primaryColor,
                      width: 1,
                    ),
                  ),
            selected: isSelected,
            backgroundColor: Colors.white,
            selectedColor: CustomColor.primaryColor,
            onSelected: (selected) {
              setState(() {
                isSelected
                    ? selectedChoices.remove(item)
                    : selectedChoices.add(item);
                widget.onSelectionChanged(selectedChoices);
              });
            },
          ),
        ),
      );
    }

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: _buildChoiceList());
  }
}
