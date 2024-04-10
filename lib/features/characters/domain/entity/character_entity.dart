import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/info_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/results_entity.dart';

class CharacterEntity {
  final List<ResultsEntity> results;
  final InfoEntity info;

  CharacterEntity({required this.info, required this.results});
}
