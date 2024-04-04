import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/models/character.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  final Results character;

  ProfileScreen({
    required this.character,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
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
                child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).popUntilRoot();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.whiteText,
                  ),
                ),
                bottom: 0,
                height: 350,
                right: 0,
                left: -330),
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
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  character.name,
                  style: AppTextStyle.profileName34,
                  textAlign: TextAlign.center,
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
                        _buildListTike(t.placeOfBirth, character.location.name),
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
                    _buildSeries(character.episode),
                    _buildSeries(character.episode),
                    _buildSeries(character.episode),

                    // _buildSeries(episodes[1]),
                    // _buildSeries(episodes[2]),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

_buildSeries(List<String> epizodes) {
  return Padding(
    padding: const EdgeInsets.only(left: 17.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${t.series} ${epizodes[0]}',
          style: AppTextStyle.epizodeText10,
        ),
        SizedBox(height: 4),
        // Text(
        //   episode.name.toString(),
        //   style: AppTextStyle.nameInListText16,
        // ),
        SizedBox(height: 5),
        // Text(
        //   episode.airDate.toString(),
        //   style: AppTextStyle.seriesText14,
        // ),
        SizedBox(height: 33),
      ],
    ),
  );
}

Expanded _buildListTike(String title, String subtitle) {
  return Expanded(
    child: Container(
      width: 20,
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
