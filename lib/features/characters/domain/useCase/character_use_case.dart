import 'package:neobis_flutter_rick_and_morty_rodion/core/use_case/use_case.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/character_entity.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/repository/repository.dart';

class CharacterUseCase extends UseCase<CharacterEntity, void> {
  final CharacterRepo repo;

  CharacterUseCase({required this.repo});
  @override
  Future<CharacterEntity> call(
    String? name,
    String? status,
    String? gender,
    int? page,
  ) async {
    var entity = await repo.getCharacters(
        name: name, status: status, gender: gender, page: page);
    return entity;
  }
}
