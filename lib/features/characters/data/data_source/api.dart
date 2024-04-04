import 'package:dio/dio.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/shared/app_constants.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/character.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: Constnats.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/character')
  Future<HttpResponse<Character>> getCharacters({
    @Query("name") String? name,
    @Query("species") String? species,
    @Query("status") String? status,
    @Query("type") String? type,
    @Query("gender") String? gender,
    @Query("page") int? page,
  });

  @GET('/episode/1')
  Future<HttpResponse<Episode>> getEpisode(String? url);
}
