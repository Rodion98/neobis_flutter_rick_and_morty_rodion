part of 'episode_bloc.dart';

@freezed
class EpisodeState with _$EpisodeState {
  const factory EpisodeState.loading() = _EpisodeStateLoading;
  const factory EpisodeState.success({required List<EpisodeEntity> episode}) =
      _EpisodeStateSuccess;
  const factory EpisodeState.failure() = _EpisodeStateError;
}
