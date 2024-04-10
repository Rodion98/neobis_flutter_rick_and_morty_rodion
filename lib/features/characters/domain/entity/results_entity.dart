import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/character_location_entity.dart';

class ResultsEntity {
  final int id;
  final String name;
  final String status;
  final String? species;
  final String? type;
  final String? gender;
  final CharacterLocationEntity? origin;
  final CharacterLocationEntity? location;
  final String? image;
  final List<String>? episode;
  final String? url;
  final DateTime? created;

  ResultsEntity(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      this.origin,
      this.location,
      required this.image,
      required this.episode,
      required this.url,
      required this.created});
}
