import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character(
      {required List<Results> results, required Info info}) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required CharacterLocation origin,
    required CharacterLocation location,
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) = _Results;
  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class CharacterLocation with _$CharacterLocation {
  const factory CharacterLocation({
    required String name,
    required String url,
  }) = _CharacterLocation;

  factory CharacterLocation.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationFromJson(json);
}

@freezed
class Episode with _$Episode {
  const factory Episode(
      {required int id,
      required String name,
      required String airDate,
      required String episode,
      required List<String> characters,
      required String url,
      required DateTime created}) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
