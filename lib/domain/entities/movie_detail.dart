import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';
// part 'movie_detail.g.dart';
// don't required because this entity using custom factory method
// to parse different variable case
// posterPath: json['poster_path'],

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required int id,
    required String title,
    String? posterPath,
    required String overview,
    String? backdropPath,
    required int runtime,
    required double voteAverage,
    required List<String> genres,
  }) = _MovieDetail;

  factory MovieDetail.fromJSON(Map<String, dynamic> json) => MovieDetail(
        id: json['id'],
        title: json['title'],
        posterPath: json['poster_path'],
        overview: json['overview'],
        backdropPath: json['backdrop_path'],
        runtime: json['runtime'],
        voteAverage: json['vote_average'].toDouble(),
        genres: List<String>.from(json['genres'].map((e) => e['none'])),
      );
}
