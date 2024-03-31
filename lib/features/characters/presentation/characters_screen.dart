import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/router/router.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/network/Api.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/widgets/build_grid_view.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/widgets/build_list_view.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/assets.gen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/src/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';
import 'package:rick_and_morty_api/rick_and_morty_api.dart';

@RoutePage()
class CharactersScreen extends StatefulWidget {
  CharactersScreen({super.key});

  late TextEditingController textEditingController = TextEditingController();
  bool view = true;

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: MyTextFiled(
          textEditingController: widget.textEditingController,
          onChangedCallback: (text) {
            setState(() {});
          },
        )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              _buildCountAndView(),
              SizedBox(
                height: 10,
              ),
              _buildView()
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ));
  }

  Future<List<Character>> _findPerson(
      TextEditingController textEditingController) {
    var _filters = CharacterFilters(
      name: textEditingController.text,
    );
    return charactersClass.getFilteredCharacters(_filters);
  }

  Expanded _buildView() {
    return Expanded(
      child: FutureBuilder<List<Character>>(
        // future: charactersClass.getAllCharacters(),
        future: _findPerson(widget.textEditingController),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError || snapshot.data == null) {
            return Center(
              child: Assets.images.searchEmpty.image(),
            );
          } else {
            var characters = snapshot.data!;
            if (widget.view == false) {
              return BuildGridView(characters: characters);
            } else {
              return BuildListView(characters: characters);
            }
          }
        },
      ),
    );
  }

  Row _buildCountAndView() {
    List<SvgPicture> icons = [
      Assets.icons.tableView.svg(),
      Assets.icons.listView.svg(),
    ];
    return Row(
      children: [
        Text(
          '${t.allPerson}: ',
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
        InkWell(
          onTap: () {
            setState(() {
              widget.view = !widget.view;
            });
          },
          child: widget.view ? icons[0] : icons[1],
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
