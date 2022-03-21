import 'package:equatable/equatable.dart';

class Ingredient extends Equatable {
  final String thumbnail;
  final String name;

  const Ingredient({required this.thumbnail, required this.name});

  @override
  List<Object?> get props => [thumbnail, name];
}
