import 'package:flutter/material.dart';

import '../cookbook_tile.dart';
import 'add_new_cookbook_button.dart';
import 'dialog_close_button.dart';
import 'dialog_title_text.dart';

class SaveToCookbookDialog extends StatelessWidget {
  final List<String> cookbooks;
  final VoidCallback? addRecipeToCookbook;
  final VoidCallback? closeDialog;
  final VoidCallback? addNewCookbook;

  const SaveToCookbookDialog({
    Key? key,
    required this.cookbooks,
    required this.addRecipeToCookbook,
    required this.closeDialog,
    required this.addNewCookbook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.all(15),
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DialogTitleText(title: 'Save to'),
                DialogCloseButton(onPressed: closeDialog),
              ],
            ),
            ...cookbooks.map((cookbook) {
              return CookbookTile(
                cookbook: cookbook,
                onPressed: addRecipeToCookbook,
              );
            }).toList(),
            const SizedBox(height: 20),
            AddNewCookbookButton(onPressed: addNewCookbook),
          ],
        ),
      ),
    );
  }
}
