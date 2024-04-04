import 'package:dio/dio.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/shared/app_constants.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/data_source/api.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/character.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class CharacterRepo {
  // final ApiClient _apiClient;

  // CharacterRepo(this._apiClient);

  final url = Constnats.baseUrl;
  Dio dio = Dio();

  // Future<Character> getCharacters() async {
  //   dio.interceptors.add(PrettyDioLogger());
  //   try {
  //     var response = await dio.get(url);
  //     var jsonResult = response.data;

  //     return Character.fromJson(jsonResult);
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }

  // Future<Character> getCharacters({
  //   String? name,
  //   String? species,
  //   String? status,
  //   String? type,
  //   String? gender,
  //   int? page,
  // }) async {
  //   final httpResponse = await _apiClient.getCharacters(
  //       name: name,
  //       species: species,
  //       status: status,
  //       type: type,
  //       gender: gender,
  //       page: page);

  //   return httpResponse.data;
  // }

  Future<Character> getSearchCharacters(String name) async {
    dio.interceptors.add(PrettyDioLogger());
    try {
      var response = await dio.get((url + Constnats.character + '?name=$name'
          //  '&status=alive'
          ));
      var jsonResult = response.data;

      return Character.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Character> getFilterCharacters(String gender, String status) async {
    dio.interceptors.add(PrettyDioLogger());
    try {
      var response = await dio
          .get((url + Constnats.character + '/?status=$status&gender=$gender'));
      var jsonResult = response.data;

      return Character.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // Future<Episode> getEpisode(List<String> episodes) async {
  //   dio.interceptors.add(PrettyDioLogger());
  //   try {
  //     var response = await dio.get((episodes[0]));
  //     var jsonResult = response.data;

  //     return Episode.fromJson(jsonResult);
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }
}
