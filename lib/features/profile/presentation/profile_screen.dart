import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/results_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/domain/entity/episode_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/profile/presentation/bloc/episode_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  final ResultsEntity character;

  ProfileScreen({
    required this.character,
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();

    context.read<EpisodeBloc>().add(
          EpisodeEvent.getEpisodes(urls: widget.character.episode),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.3,
          child: Column(
            children: [
              _buildImage(context),
              Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      widget.character.name,
                      style: AppTextStyle.profileName34,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      widget.character.status,
                      style: (widget.character.status == 'Alive')
                          ? AppTextStyle.aliveText10
                          : AppTextStyle.deadText10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            _buildListTike(t.gender, widget.character.gender!),
                            _buildListTike(t.race, widget.character.species!)
                          ],
                        ),
                        Row(
                          children: [
                            _buildListTike(
                                t.geoposition, widget.character.origin!.name!),
                          ],
                        ),
                        Row(
                          children: [
                            _buildListTike(t.placeOfBirth,
                                widget.character.location!.name!),
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
                        _blocBuilder(context)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _blocBuilder(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: BlocBuilder<EpisodeBloc, EpisodeState>(builder: (context, state) {
        return state.when(
            loading: () => Center(
                  child: CircularProgressIndicator(),
                ),
            success: (episode) => ListView.builder(
                itemCount: episode.length,
                itemBuilder: (context, index) => _buildSeries(episode[index])),
            failure: () => Center(
                  child:
                      SizedBox(width: 50, height: 50, child: Icon(Icons.error)),
                ));
      }),
    );
  }

  Stack _buildImage(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.character.image!),
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
              backgroundImage: NetworkImage(widget.character.image!),
            ),
          ),
        ),
      ],
    );
  }
}

Padding _buildSeries(EpisodeEntity episode) {
  return Padding(
    padding: const EdgeInsets.only(left: 17.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${t.series} ${episode.id}',
          style: AppTextStyle.epizodeText10,
        ),
        SizedBox(height: 4),
        Text(
          episode.name.toString(),
          style: AppTextStyle.nameInListText16,
        ),
        SizedBox(height: 5),
        Text(
          episode.air_date.toString(),
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
