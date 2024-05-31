import 'package:project_tutorial2/core/strings.dart';
import 'package:project_tutorial2/infrastrecture/api_key.dart';

class ApiEndPoints {
  static const download = '$kBaseUrl/trending/movie/day?api_key=$apiKey';
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey&query=';
  static const tvPopular = '$kBaseUrl/tv/popular?api_key=$apiKey';
  static const moviePopular = '$kBaseUrl/movie/popular?api_key=$apiKey';
  static const topRated = '$kBaseUrl/movie/top_rated?api_key=$apiKey';
  static const upcoming = '$kBaseUrl/movie/upcoming?api_key=$apiKey';
  static const nowPlaying = '$kBaseUrl/movie/now_playing?api_key=$apiKey';
}
