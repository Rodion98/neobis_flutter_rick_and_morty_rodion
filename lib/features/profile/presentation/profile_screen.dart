import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/src/io_ui.dart';
import 'package:rick_and_morty_api/rick_and_morty_api.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  final Character character = Character(
      created: DateTime(2017 - 11 - 04),
      episode: [],
      gender: "Male",
      id: 1,
      image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
      location: CharacterLocation(
          name: "Citadel of Ricks",
          url: "https://rickandmortyapi.com/api/location/3"),
      name: "Rick Sanchez",
      origin: CharacterLocation(
          name: "Earth (C-137)",
          url: "https://rickandmortyapi.com/api/location/1"),
      species: "Human",
      status: "Alive",
      type: "",
      url: "https://rickandmortyapi.com/api/location/1");

  ProfileScreen({super.key});

  List<EpisodeCustom> episodes = [
    EpisodeCustom(
        name: 'The Ricklantis Mixup',
        airDate: DateTime(9, 10, 2017),
        episode: "S03E07"),
    EpisodeCustom(
        name: "Morty's Mind Blowers",
        airDate: DateTime(9, 17, 2017),
        episode: "S03E08"),
    EpisodeCustom(
      name: "The ABC's of Beth",
      airDate: DateTime(9, 24, 2017),
      episode: "S03E09",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(character.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(11, 30, 45, 0.65),
                        Color.fromRGBO(11, 30, 45, 0.65),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -90.0,
              child: CircleAvatar(
                radius: 108,
                backgroundColor: AppColors.backgroundColor,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(character.image),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    character.name,
                    style: AppTextStyle.profileName34,
                  ),
                  Text(
                    character.status,
                    style: (character.status == 'Alive')
                        ? AppTextStyle.aliveText10
                        : AppTextStyle.deadText10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _buildListTike(t.gender, character.gender),
                          _buildListTike(t.race, character.species)
                        ],
                      ),
                      Row(
                        children: [
                          _buildListTike(t.geoposition, character.origin.name),
                        ],
                      ),
                      Row(
                        children: [
                          _buildListTike(
                              t.placeOfBirth, character.location.name),
                        ],
                      ),
                      Divider(color: AppColors.searchFiledColor),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          t.episodes,
                          style: AppTextStyle.episodesTitle20,
                        ),
                      ),
                      SizedBox(height: 26),
                      _buildSeries(episodes[0]),
                      _buildSeries(episodes[1]),
                      _buildSeries(episodes[2]),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class EpisodeCustom {
  EpisodeCustom({
    required this.name,
    required this.airDate,
    required this.episode,
  });

  String name;
  DateTime airDate;
  String episode;
}

_buildSeries(EpisodeCustom episode) {
  return Padding(
    padding: const EdgeInsets.only(left: 17.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${t.series} 1',
          style: AppTextStyle.epizodeText10,
        ),
        SizedBox(height: 4),
        Text(
          episode.name.toString(),
          style: AppTextStyle.nameInListText16,
        ),
        SizedBox(height: 5),
        Text(
          episode.airDate.toString(),
          style: AppTextStyle.seriesText14,
        ),
        SizedBox(height: 33),
      ],
    ),
  );
}

Expanded _buildListTike(String title, String subtitle) {
  return Expanded(
    child: Container(
      // width: 20,
      child: ListTile(
        title: Text(
          title,
          style: AppTextStyle.profileTitle12,
        ),
        subtitle: Text(subtitle, style: AppTextStyle.profileInfo14),
      ),
    ),
  );
}
