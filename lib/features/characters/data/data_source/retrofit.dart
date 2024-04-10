import 'package:dio/dio.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/shared/app_constants.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/character/character.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/data/models/episode/episode.dart';

import 'package:retrofit/retrofit.dart';

part 'retrofit.g.dart';

@RestApi(baseUrl: Constnats.baseUrl)
abstract class CharactersApi {
  factory CharactersApi(Dio dio) = _CharactersApi;

  @GET('/character')
  Future<HttpResponse<CharacterModel>> getCharacters({
    @Query("name") String? name,
    @Query("status") String? status,
    @Query("gender") String? gender,
    @Query("page") int? page,
  });

  @GET('/episode/{url}')
  Future<HttpResponse<List<EpisodeModel>>> getEpisodes({
    @Path("url") String? url,
  });

  @GET('/episode/{url}')
  Future<HttpResponse<EpisodeModel>> getEpisode({
    @Path("url") String? url,
  });
}
