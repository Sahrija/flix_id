import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor.freezed.dart';

// part 'actor.g.dart';
// don't required because this entity using custom factory method
// to parse different variable case
// posterPath: json['poster_path'],

@freezed
class Actor with _$Actor {
  const factory Actor({
    required String name,
    String? profilePath,
  }) = _Actor;

  factory Actor.fromJSON(Map<String, dynamic> json) => Actor(
        name: json['id'],
        profilePath: json['profile_path'],
      );
}
