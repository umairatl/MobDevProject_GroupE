import 'package:flutter/material.dart';
import 'package:recipe_project/model/recipe_list.dart';

abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final RecipeModel recipeModel;

  HomeLoaded({required this.recipeModel});
}

class HomeError extends HomeState {
  final String errorMessage;

  HomeError({required this.errorMessage});
}
