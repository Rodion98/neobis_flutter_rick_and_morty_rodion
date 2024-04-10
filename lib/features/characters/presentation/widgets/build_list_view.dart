import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/router/router.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/entity/character_entity.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/bloc/character_bloc.dart';

class BuildListView extends StatelessWidget {
  const BuildListView({
    super.key,
    required this.characters,
  });

  final CharacterEntity characters;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: characters.results.length,
        itemBuilder: (context, index) {
          // if (index == characters.results.length - 1) {
          //   context.read<CharacterBloc>().add(
          //         CharacterEvent.search(page: 3),
          //       );
          // }
          return GestureDetector(
            onTap: () {
              AutoRouter.of(context).push(
                ProfileRoute(
                  character: characters.results[index],
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 74,
                    width: 74,
                    child: Container(
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(characters.results[index].image!),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        characters.results[index].status,
                        style: (characters.results[index].status == 'Alive')
                            ? AppTextStyle.aliveText10
                            : AppTextStyle.deadText10,
                      ),
                      Text(
                        characters.results[index].name,
                        style: AppTextStyle.nameInListText16,
                      ),
                      Text(
                        '${characters.results[index].species}, ${characters.results[index].gender}',
                        style: AppTextStyle.statusText12,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
