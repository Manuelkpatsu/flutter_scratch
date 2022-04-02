import 'package:flutter/material.dart';

import 'empty_search_state.dart';
import 'non_empty_search_state.dart';
import 'widget/search_filter_dialog.dart';
import 'widget/search_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchTextField(
          controller: _searchController,
          onFilterTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const SearchFilterDialog();
              },
            );
          },
          onChanged: (String value) {
            setState(() {
              _searchController.value = TextEditingValue(
                  text: value,
                  selection: TextSelection(
                    baseOffset: value.length,
                    extentOffset: value.length,
                  ));
            });
          },
        ),
      ),
      body: _searchController.text.isEmpty
          ? const EmptySearchState()
          : const NonEmptySearchState(),
    );
  }
}
