import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/data_source/retrofit.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/mapper/results_,mapper.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/character_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/repository/repository.dart';

class CharacterRepoImpl implements CharacterRepo {
  final CharactersApi api;
  final CharacterMapper mapper;

  CharacterRepoImpl({required this.api, required this.mapper});

  @override
  Future<CharacterEntity> getCharacters({
    String? name,
    String? species,
    String? status,
    String? type,
    String? gender,
    int? page,
  }) async {
    final httpResponse = await api.getCharacters(
        name: name, status: status, gender: gender, page: page);
    final characterModel = httpResponse.data;
    print(characterModel);
    final characterEntity = mapper.mapper(characterModel);
    return characterEntity;
  }
}
