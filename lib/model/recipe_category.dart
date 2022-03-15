import 'package:equatable/equatable.dart';

class RecipeCategory extends Equatable {
  final String name;
  final String thumbnail;

  const RecipeCategory({required this.name, required this.thumbnail});

  @override
  List<Object?> get props => [name, thumbnail];
}
