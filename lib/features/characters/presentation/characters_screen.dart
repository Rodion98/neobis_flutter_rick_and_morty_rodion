import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/bloc/character_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/widgets/build_grid_view.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/widgets/build_list_view.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/gen/assets.gen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';

@RoutePage()
class CharactersScreen extends StatefulWidget {
  final String? status;
  final String? gender;
  CharactersScreen({this.status, this.gender, super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  bool view = false;

  @override
  void initState() {
    super.initState();

    context.read<CharacterBloc>().add(
          CharacterEvent.search(gender: widget.gender, status: widget.status),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyTextFiled(widget.gender, widget.status),
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return state.when(
            failure: () => Center(
              child: Assets.images.searchEmpty.image(),
            ),
            loading: () {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (character) => (Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  _buildCountAndView(character.info.count!),
                  SizedBox(height: 20),
                  if (!view)
                    BuildListView(characters: character)
                  else
                    BuildGridView(characters: character)
                ],
              ),
            )),
          );
        },
      ),
    );
  }

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
