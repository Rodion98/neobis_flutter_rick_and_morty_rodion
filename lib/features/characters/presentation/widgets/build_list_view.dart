import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/router/router.dart';
import 'package:rick_and_morty_api/rick_and_morty_api.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/src/io_ui.dart';

class BuildListView extends StatelessWidget {
  const BuildListView({
    super.key,
    required this.characters,
  });

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            AutoRouter.of(context)
                .push(ProfileRoute(character: characters[index]));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 74,
                  width: 74,
                  child: Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(characters[index].image),
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
                      characters[index].status,
                      style: (characters[index].status == 'Alive')
                          ? AppTextStyle.aliveText10
                          : AppTextStyle.deadText10,
                    ),
                    Text(
                      characters[index].name,
                      style: AppTextStyle.nameInListText16,
                    ),
                    Text(
                      '${characters[index].species}, ${characters[index].gender}   ',
                      style: AppTextStyle.statusText12,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
