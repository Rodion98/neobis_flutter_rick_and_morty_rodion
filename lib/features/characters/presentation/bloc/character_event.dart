part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.search({
    String? status,
    String? gender,
    String? name,
    int? page,
  }) = _GetSearchCharacters;
}
