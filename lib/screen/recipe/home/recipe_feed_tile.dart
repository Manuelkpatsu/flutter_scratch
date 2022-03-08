// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:scratch/theme/custom_color.dart';

import 'widget/chef_avatar.dart';
import 'widget/chef_name_text.dart';
import 'widget/created_time_text.dart';
import 'widget/favorite_button.dart';
import 'widget/recipe_feed_description_text.dart';
import 'widget/recipe_feed_likes_comments_text.dart';
import 'widget/recipe_feed_name_text.dart';
import 'widget/recipe_feed_thumbnail.dart';
import 'widget/save_recipe_button.dart';

class RecipeFeedTile extends StatefulWidget {
  final String thumbnail;
  final VoidCallback? onTap;
  final String chefThumbnail;
  final String chefName;
  final String createdAt;
  final String name;
  bool favorite;
  final String description;
  final int likes;
  final int comments;
  final VoidCallback? openDialog;

  RecipeFeedTile({
    Key? key,
    required this.thumbnail,
    required this.onTap,
    required this.chefThumbnail,
    required this.chefName,
    required this.createdAt,
    required this.name,
    required this.favorite,
    required this.description,
    required this.likes,
    required this.comments,
    required this.openDialog,
  }) : super(key: key);

  @override
  State<RecipeFeedTile> createState() => _RecipeFeedTileState();
}

class _RecipeFeedTileState extends State<RecipeFeedTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: CustomColor.cardColor,
      shadowColor: CustomColor.buttonShadowColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                RecipeFeedThumbnail(thumbnail: widget.thumbnail),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(8)),
                    color: Colors.white.withOpacity(0.95),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ChefAvatar(thumbnail: widget.chefThumbnail),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ChefNameText(chefName: widget.chefName),
                          CreatedTimeText(createdAt: widget.createdAt),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RecipeFeedNameText(name: widget.name),
                  FavoriteButton(
                    onPressed: () =>
                        setState(() => widget.favorite = !widget.favorite),
                    favorite: widget.favorite,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            RecipeFeedDescriptionText(description: widget.description),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RecipeFeedLikesCommentsText(
                      likes: widget.likes, comments: widget.comments),
                  SaveRecipeButton(onPressed: widget.openDialog),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
