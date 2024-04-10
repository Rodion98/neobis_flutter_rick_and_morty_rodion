part of 'episode_bloc.dart';

@freezed
class EpisodeEvent with _$EpisodeEvent {
  const factory EpisodeEvent.getEpisodes({List<String>? urls}) = _GetEpisodes;
}
