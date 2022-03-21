import 'package:flutter/material.dart';
import 'package:scratch/screen/recipe/gallery/gallery_screen.dart';

import 'gallery_thumbnail.dart';
import 'image_numbers.dart';

class GalleryGridView extends StatelessWidget {
  final List<String> galleryItems;

  const GalleryGridView({
    Key? key,
    required this.galleryItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      itemCount: galleryItems.length > 3 ? 3 : galleryItems.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      semanticChildCount: 1,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return galleryItems.length > 3 && index == 2
            ? ImageNumbers(index: index, galleryItems: galleryItems)
            : GalleryThumbnail(
                image: galleryItems[index],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => GalleryScreen(
                        galleryItems: galleryItems,
                        backgroundDecoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        initialIndex: index,
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}
