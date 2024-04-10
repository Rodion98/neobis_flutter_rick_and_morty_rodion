import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/character_location/character_location.dart';

part 'results.freezed.dart';
part 'results.g.dart';

@freezed
class ResultsModel with _$ResultsModel {
  const factory ResultsModel({
    final int? id,
    final String? name,
    final String? status,
    final String? species,
    final String? type,
    final String? gender,
    final CharacterLocationModel? origin,
    final CharacterLocationModel? location,
    final String? image,
    final List<String>? episode,
    final String? url,
    final DateTime? created,
  }) = _ResultsModel;
  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);
}
