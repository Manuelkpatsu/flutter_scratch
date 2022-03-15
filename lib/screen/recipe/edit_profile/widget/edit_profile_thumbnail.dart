import 'package:flutter/material.dart';

class EditProfileThumbnail extends StatelessWidget {
  final String thumbnail;
  final VoidCallback? onTap;

  const EditProfileThumbnail({
    Key? key,
    required this.thumbnail,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            thumbnail,
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
