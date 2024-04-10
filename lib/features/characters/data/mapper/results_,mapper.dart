import 'package:neobis_flutter_rick_and_morty_rodion/core/app/mapper/mapper.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/character/character.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/character_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/character_location_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/info_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/results_entity.dart';

class CharacterMapper extends Mapper<CharacterEntity, CharacterModel> {
  @override
  CharacterEntity mapper(characterModel) {
    return CharacterEntity(
      info: InfoEntity(
        count: characterModel.info.count,
        pages: characterModel.info.pages,
        next: characterModel.info.next,
        prev: characterModel.info.prev,
      ),
      results: characterModel.results
          .map((result) => ResultsEntity(
                id: result.id ?? 0,
                name: result.name ?? '',
                status: result.status ?? '',
                species: result.species ?? '',
                type: result.type ?? '',
                gender: result.gender ?? '',
                origin: result.origin != null
                    ? CharacterLocationEntity(
                        name: result.origin!.name ?? '',
                        url: result.origin!.url ?? '',
                      )
                    : null,
                location: result.location != null
                    ? CharacterLocationEntity(
                        name: result.location!.name ?? '',
                        url: result.location!.url ?? '',
                      )
                    : null,
                image: result.image ?? '',
                episode: result.episode ?? [],
                url: result.url ?? '',
                created: result.created ?? DateTime(0),
              ))
          .toList(),
    );
  }
}
