import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/info/info.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/results/results.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel(
      {required List<ResultsModel> results,
      required InfoModel info}) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}
