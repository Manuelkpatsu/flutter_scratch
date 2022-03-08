import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final String name;
  final String thumbnail;
  final String chefName;
  final String chefThumbnail;
  final String description;
  final int numberOfLikes;
  final int numberOfComments;
  final String createdAt;
  final bool favorite;

  const Recipe({
    required this.name,
    required this.thumbnail,
    required this.chefName,
    required this.chefThumbnail,
    required this.description,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.createdAt,
    required this.favorite,
  });

  @override
  List<Object?> get props => [
        name,
        thumbnail,
        chefName,
        chefThumbnail,
        description,
        numberOfLikes,
        numberOfComments,
        createdAt,
        favorite,
      ];
}
