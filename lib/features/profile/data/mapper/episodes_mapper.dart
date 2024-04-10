import 'package:neobis_flutter_rick_and_morty_rodion/core/app/mapper/mapper.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/data/models/episode/episode.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/entity/episode_entity.dart';

class EpisodeMapper extends Mapper<List<EpisodeEntity>, List<EpisodeModel>> {
  @override
  List<EpisodeEntity> mapper(List<EpisodeModel> models) {
    return models
        .map((model) => EpisodeEntity(
            id: model.id,
            name: model.name,
            air_date: model.air_date,
            episode: model.episode,
            characters: model.characters,
            url: model.url,
            created: model.created))
        .toList();
  }
}
