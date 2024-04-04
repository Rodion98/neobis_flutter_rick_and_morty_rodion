import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/router/router.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/data/repository/character_repo.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/bloc/character_bloc.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/widgets/build_grid_view.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/widgets/build_list_view.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/assets.gen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';

@RoutePage()
class CharactersScreen extends StatefulWidget {
  CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  // final repository = CharacterRepo();
  bool view = false;

  void initState() {
    context.read<CharacterBloc>().add(const CharacterEvent.search());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: MyTextFiled()),
        body: BlocBuilder<CharacterBloc, CharacterState>(
            builder: (context, state) {
          return state.when(
            failure: () => Center(
              child: Assets.images.searchEmpty.image(),
            ),
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
            success: (character) => (Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  _buildCountAndView(character.info.count),
                  SizedBox(height: 20),
                  if (!view)
                    BuildListView(characters: character.results)
                  else
                    BuildGridView(characters: character.results)
                ],
              ),
            )),
          );
        }));
  }

  //   return Expanded(
  //     child: FutureBuilder<List<Character>>(
  //       // future: charactersClass.getAllCharacters(),
  //       future: _findPerson(widget.textEditingController),
  //       builder: (context, snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return Center(
  //             child: CircularProgressIndicator(),
  //           );
  //         } else if (snapshot.hasError || snapshot.data == null) {
  //           return Center(
  //             child: Assets.images.searchEmpty.image(),
  //           );
  //         } else {
  //           var characters = snapshot.data!;
  //           if (widget.view == false) {
  //             return BuildGridView(characters: characters);
  //           } else {
  //             return BuildListView(characters: characters);
  //           }
  //         }
  //       },
  //     ),
  //   );
  // }

  // Future<List<Character>> _findPerson(
  //     TextEditingController textEditingController) {
  //   var _filters = CharacterFilters(
  //     name: textEditingController.text,
  //   );
  //   return charactersClass.getFilteredCharacters(_filters);
  // }

  // Expanded _buildView() {
  //   return Expanded(
  //     child: FutureBuilder<List<Character>>(
  //       // future: charactersClass.getAllCharacters(),
  //       future: _findPerson(widget.textEditingController),
  //       builder: (context, snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return Center(
  //             child: CircularProgressIndicator(),
  //           );
  //         } else if (snapshot.hasError || snapshot.data == null) {
  //           return Center(
  //             child: Assets.images.searchEmpty.image(),
  //           );
  //         } else {
  //           var characters = snapshot.data!;
  //           if (widget.view == false) {
  //             return BuildGridView(characters: characters);
  //           } else {
  //             return BuildListView(characters: characters);
  //           }
  //         }
  //       },
  //     ),
  //   );
  // }

  Row _buildCountAndView(int count) {
    List<SvgPicture> icons = [
      Assets.icons.tableView.svg(),
      Assets.icons.listView.svg(),
    ];
    return Row(
      children: [
        Text(
          '${t.allPerson}: $count ',
          style: AppTextStyle.allPersonsText10.copyWith(
            shadows: [
              BoxShadow(
                offset: Offset(3, 4),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: InkWell(
            onTap: () {
              setState(() {
                view = !view;
                print(view);
              });
            },
            child: view ? icons[1] : icons[0],
          ),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}

// class BuildView extends StatefulWidget {
//   const BuildView({super.key});

//   @override
//   State<BuildView> createState() => _BuildViewState();
// }

// class _BuildViewState extends State<BuildView> {
//   void initState() {
//     context.read<CharacterBloc>().add(const CharacterEvent.search(name: ''));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CharacterBloc, CharacterState>(
//         builder: (context, state) {
//       return state.when(
//           failure: () => const Text(
//                 'nothing',
//                 style: AppTextStyle.aliveText10,
//               ),
//           loading: () {
//             return Center(child: CircularProgressIndicator());
//           },
//           success: (character) => (BuildListView(
//                 characters: character.results,
//               )));
//     });
//   }
// }
