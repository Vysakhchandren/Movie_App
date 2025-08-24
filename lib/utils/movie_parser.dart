import 'dart:convert';

import 'package:movie_apps/models/movie.dart';

class MovieParser {
  static List<Movie> parse(String jsonString) {
    final List<dynamic> parsedJasonList = json.decode(jsonString);
    return parsedJasonList.map((jsonItem) =>
        Movie.fromJson(jsonItem as Map<String, dynamic>)).toList();
  }


}