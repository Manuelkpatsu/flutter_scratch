import 'package:flutter/material.dart';
import 'package:scratch/screen/recipe/gallery/gallery_screen.dart';
import 'package:scratch/theme/styles.dart';

import 'gallery_thumbnail.dart';

class ImageNumbers extends StatelessWidget {
  final int index;
  final List<String> galleryItems;

  const ImageNumbers({
    Key? key,
    required this.index,
    required this.galleryItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          GalleryThumbnail(image: galleryItems[index]),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
            ),
            child: Center(
              child: Text(
                "${galleryItems.length - index}+",
                style: headingFourStyle.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
