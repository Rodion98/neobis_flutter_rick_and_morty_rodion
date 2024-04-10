part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = _CharacterStateLoading;
  const factory CharacterState.success({required CharacterEntity character}) =
      _CharacterStateSuccess;
  const factory CharacterState.failure() = _CharacterStateError;
}
