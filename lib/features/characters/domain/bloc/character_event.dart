part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.getAll() = _GetCharacters;

  const factory CharacterEvent.search({
    String? name,
  }) = _GetSearchCharacters;

  const factory CharacterEvent.filter({
    // String? name,
    String? status,
    String? gender,
  }) = _GetFilterCharacters;
}
