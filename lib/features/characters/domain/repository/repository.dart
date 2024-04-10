import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/character_entity.dart';

abstract class CharacterRepo {
  Future<CharacterEntity> getCharacters({
    String? name,
    String? species,
    String? status,
    String? type,
    String? gender,
    int? page,
  });
}
