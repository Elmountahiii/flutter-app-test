import 'package:flutter/material.dart';
import 'package:namer_app/models/movie_model.dart';

class MoviesProvider extends ChangeNotifier {
  final List<Movie> movies = List.generate(
      10,
      (index) => Movie(
          title: "movie number : $index",
          duration: "movie duration is : ${index * 20}"));

  void addNewMovie(Movie movie) {
    movies.add(movie);
    notifyListeners();
  }
}
