import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/entity/episode_entity.dart';

abstract class EpisodeRepo {
  Future<List<EpisodeEntity>> getEpisode(List<String>? urls);
}
