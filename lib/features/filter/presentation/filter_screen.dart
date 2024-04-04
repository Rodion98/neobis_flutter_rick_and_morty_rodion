import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/domain/bloc/character_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/filter/presentation/models/filter_model.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/assets.gen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';

@RoutePage()
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(context),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.sort,
                      style: AppTextStyle.filterpart10,
                    ),
                    SizedBox(height: 26),
                    Row(
                      children: [
                        Text(
                          t.alphabet,
                          style: AppTextStyle.filterWhite16,
                        ),
                        Spacer(),
                        SizedBox(
                          height: 26,
                          width: 34,
                          child: Assets.icons.imgThumbsUp.svg(),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        SizedBox(
                          height: 26,
                          width: 34,
                          child: Assets.icons.imgSettings.svg(),
                        ),
                      ],
                    ),
                    SizedBox(height: 26),
                    Divider(color: AppColors.searchFiledColor),
                    SizedBox(height: 26),
                    Text(
                      t.status,
                      style: AppTextStyle.filterpart10,
                    ),
                    SizedBox(height: 26),
                    _buildCheckboxColumn(context),
                  ]),
            ),
          ),
        );
      },
    );
  }
}

Column _buildCheckboxColumn(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildCheckBox(context),
      // _buildCheckBox(_filterModel.dead, t.dead),
      // _buildCheckBox(_filterModel.unknown, t.unknown),
      SizedBox(height: 26),
      Divider(color: AppColors.searchFiledColor),
      SizedBox(height: 26),
      Text(
        t.gender,
        style: AppTextStyle.filterpart10,
      ),
      SizedBox(height: 26),
      // _buildCheckBox(_filterModel.male, t.male),
      // _buildCheckBox(_filterModel.female, t.female),
      // _buildCheckBox(_filterModel.noGender, t.nogender),
    ],
  );
}

Row _buildCheckBox(BuildContext context) {
  bool checkBox = false;

  FilterModel _filterModel = FilterModel();
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Checkbox(
        value: checkBox,
        onChanged: (value) {
          checkBox = value!;

          context
              .read<CharacterBloc>()
              .add(CharacterEvent.filter(gender: 'female', status: 'alive'));
        },
        side: BorderSide(color: AppColors.greyUsual),
      ),
      // Text(
      //   text,
      //   style: AppTextStyle.filterWhite16,
      // )
    ],
  );
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
      backgroundColor: AppColors.searchFiledColor,
      title: Container(
        padding: EdgeInsets.only(bottom: 12, top: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              t.filters,
              style: AppTextStyle.episodesTitle20,
            ),
            SizedBox(
              height: 36,
              width: 36,
              child: Assets.icons.delete.svg(),
            ),
          ],
        ),
      ));
}
