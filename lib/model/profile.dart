import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  final String thumbnail;
  final String chefName;
  final String profileImg;
  final String about;
  final int numberOfLikes;
  final int numberOfFollowers;
  final int numberOfRecipes;

  const Profile({
    required this.thumbnail,
    required this.chefName,
    required this.profileImg,
    required this.about,
    required this.numberOfLikes,
    required this.numberOfFollowers,
    required this.numberOfRecipes,
  });

  @override
  List<Object?> get props => [
        thumbnail,
        chefName,
        profileImg,
        about,
        numberOfLikes,
        numberOfFollowers,
        numberOfRecipes,
      ];
}
