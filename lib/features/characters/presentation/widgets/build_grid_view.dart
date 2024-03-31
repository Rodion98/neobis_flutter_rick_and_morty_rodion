import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/router/router.dart';

import 'package:rick_and_morty_api/rick_and_morty_api.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/src/io_ui.dart';

class BuildGridView extends StatelessWidget {
  BuildGridView({
    super.key,
    required this.characters,
  });

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
      ),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            AutoRouter.of(context)
                .push(ProfileRoute(character: characters[index]));
          },
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 110,
                  width: 110,
                  child: Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(characters[index].image),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      characters[index].status,
                      style: (characters[index].status == 'Alive')
                          ? AppTextStyle.aliveText10
                          : AppTextStyle.deadText10,
                    ),
                    FittedBox(
                      child: Text(
                        characters[index].name,
                        style: AppTextStyle.nameInListText16,
                      ),
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
