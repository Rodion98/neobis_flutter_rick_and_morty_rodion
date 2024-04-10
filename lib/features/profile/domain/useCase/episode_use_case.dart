import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/use_case/use_case.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/entity/episode_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/repository/repository.dart';

class EpisodeUseCase {
  final EpisodeRepo repo;
  EpisodeUseCase({required this.repo});

  @override
  Future<List<EpisodeEntity>> call(List<String>? urls) async {
    var entity = await repo.getEpisode(urls);
    return entity;
  }
}
