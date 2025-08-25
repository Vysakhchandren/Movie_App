import 'dart:convert';

import 'package:movie_apps/models/movie.dart';

class MovieParser {
  static List<Movie> parse(String jsonString) {
    print("JsonString: $jsonString");
    final List<dynamic> parsedJsonList = json.decode(jsonString);
    print("parsedJson:$parsedJsonList");
    return parsedJsonList.map((jsonItem) =>
        Movie.fromJson(jsonItem as Map<String, dynamic>)).toList();
  }


}