import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/data_source/retrofit.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/data/mapper/episodes_mapper.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/entity/episode_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/repository/repository.dart';

class EpisodeRepoImpl implements EpisodeRepo {
  final CharactersApi api;
  final EpisodeMapper mapper;

  EpisodeRepoImpl({required this.api, required this.mapper});

  @override
  Future<List<EpisodeEntity>> getEpisode(List<String>? urls) async {
    String url = urls!.map((url) => url.split('/').last).join(',');
    if (url.contains(',')) {
      final httpResponse = await api.getEpisodes(url: url);
      final episodeModel = httpResponse.data;
      final episodeEntity = mapper.mapper(episodeModel);
      return episodeEntity;
    } else {
      List<EpisodeEntity> list = [];
      final httpResponse = await api.getEpisode(url: url);
      final episodeModel = httpResponse.data;
      final episodeentity = EpisodeEntity(
          id: episodeModel.id,
          name: episodeModel.name,
          air_date: episodeModel.air_date,
          episode: episodeModel.episode,
          characters: episodeModel.characters,
          url: episodeModel.url,
          created: episodeModel.created);
      list.add(episodeentity);
      return list;
    }
  }
}
