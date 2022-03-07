import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final String name;
  final String thumbnail;
  final String chef;
  final String description;
  final int numberOfLikes;
  final int numberOfComments;
  final String date;
  final bool favorite;

  const Recipe({
    required this.name,
    required this.thumbnail,
    required this.chef,
    required this.description,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.date,
    required this.favorite,
  });

  @override
  List<Object?> get props => [
        name,
        thumbnail,
        chef,
        description,
        numberOfLikes,
        numberOfComments,
        date,
        favorite,
      ];
}
