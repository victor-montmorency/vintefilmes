import 'package:dio/dio.dart';
import 'package:vintefilmes/model/movieModelDetail.dart';
import 'model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MoviesRepository {
  final dio = Dio();
  final url = 'https://desafio-mobile.nyc3.digitaloceanspaces.com/movies-v2';
  Future<List<MovieModel>> FetchMovies() async {
    final response = await dio.get(url);
    final list = response.data as List;
    List<MovieModel> movies = [];
    for (var json in list) {
      final movie = MovieModel.fromJson(json);
      movies.add(movie);
    }
    return movies;
  }
}

Future fetchdetail(id) async {
  var url = 'https://desafio-mobile.nyc3.digitaloceanspaces.com/movies-v2/$id';
  var response = await http.get(Uri.parse(url));
  print(response.body);
  var json = jsonDecode(response.body);
  print(json.runtimeType);
  return json;
}
