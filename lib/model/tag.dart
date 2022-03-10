import 'package:equatable/equatable.dart';

class Tag extends Equatable {
  final String hashTag;
  final int totalNumberOfFollowers;
  final int totalNumberOfRecipes;

  const Tag({
    required this.hashTag,
    required this.totalNumberOfFollowers,
    required this.totalNumberOfRecipes,
  });

  @override
  List<Object?> get props => [
        hashTag,
        totalNumberOfFollowers,
        totalNumberOfRecipes,
      ];
}
