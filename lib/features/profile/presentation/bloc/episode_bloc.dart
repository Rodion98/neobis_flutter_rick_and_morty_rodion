import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/entity/episode_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/useCase/episode_use_case.dart';

part 'episode_event.dart';
part 'episode_state.dart';
part 'episode_bloc.freezed.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  final EpisodeUseCase episodeUseCase;
  EpisodeBloc({required this.episodeUseCase})
      : super(
          EpisodeState.loading(),
        ) {
    on<_GetEpisodes>(_getEpisodes);
  }

  Future<void> _getEpisodes(_GetEpisodes event, Emitter<EpisodeState> emit) async {
    emit(const EpisodeState.loading());
    try {
      List<EpisodeEntity> _episodes = await episodeUseCase.call(event.urls);
      emit(
        EpisodeState.success(episode: _episodes),
      );
    } catch (_) {
      emit(
        const EpisodeState.failure(),
      );
    }
  }
}
