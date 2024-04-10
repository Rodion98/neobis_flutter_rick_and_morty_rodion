import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/router/router.dart';

import 'package:neobis_flutter_rick_and_morty_rodion/features/characters/presentation/bloc/character_bloc.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/features/filter/presentation/widgets/checkbox_list.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/assets.gen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';

@RoutePage()
class FilterScreen extends StatefulWidget {
  FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String? gender;
  String? status;

  final List<Map> _statusList = [
    {'name': 'alive', "isChecked": false},
    {'name': 'dead', "isChecked": false},
    {'name': 'unknown', "isChecked": false},
  ];

  final List<Map> _genderList = [
    {'name': 'male', "isChecked": false},
    {'name': 'female', "isChecked": false},
    {'name': 'ungender', "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 16,
                ),
                child: Text(
                  t.sort,
                  style: AppTextStyle.filterpart10,
                ),
              ),
              _buildAlphabetFilter(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 36,
                ),
                child: Divider(color: AppColors.searchFiledColor),
              ),
              _buildStatusBoxes(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 36,
                ),
                child: Divider(color: AppColors.searchFiledColor),
              ),
              _buildGenderBoxes(),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildGenderBoxes() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            bottom: 24,
          ),
          child: Text(
            t.gender,
            style: AppTextStyle.filterpart10,
          ),
        ),
        Column(
          children: _genderList.map((list) {
            return _buildCheckboxList(list);
          }).toList(),
        ),
      ],
    );
  }

  Column _buildStatusBoxes() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            bottom: 24,
          ),
          child: Text(
            t.status,
            style: AppTextStyle.filterpart10,
          ),
        ),
        Column(
          children: _statusList.map((list) {
            return _buildCheckboxList(list);
          }).toList(),
        ),
      ],
    );
  }

  Padding _buildAlphabetFilter() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
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
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 52,
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: AppColors.backgroundColor,
      actions: [
        if (_anyCheckboxSelected) _buildIconButton(),
      ],
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              AutoRouter.of(context)
                  .replace(CharactersRoute(gender: gender, status: status));
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColors.whiteText,
            ),
          ),
          SizedBox(width: 20),
          Text(
            t.filters,
            style: AppTextStyle.episodesTitle20,
          ),
          Spacer(),
        ],
      ),
    );
  }

  CheckboxList _buildCheckboxList(list) {
    return CheckboxList(
      text: list['name'],
      value: list['isChecked'],
      onChanged: (bool? value) {
        _selectCheckbox(list, value);
      },
    );
  }

  IconButton _buildIconButton() {
    return IconButton(
      onPressed: () {
        _clearFilters();
      },
      icon: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Assets.icons.delete.svg(),
      ),
    );
  }

  bool get _anyCheckboxSelected {
    List<Map> allLists = [..._statusList, ..._genderList];
    return allLists.any((element) => element['isChecked']);
  }

  void _selectCheckbox(Map list, bool? val) {
    setState(() {
      if (_statusList.contains(list)) {
        for (var item in _statusList) {
          if (item != list) {
            item['isChecked'] = false;
          }
        }
        status = val! ? list['name'] : null;
        print(status);
      } else if (_genderList.contains(list)) {
        for (var item in _genderList) {
          if (item != list) {
            item['isChecked'] = false;
          }
        }
        gender = val! ? list['name'] : null;
        print(gender);
      }
      list['isChecked'] = val;
    });
  }

  void _clearFilters() {
    setState(() {
      for (var element in _statusList) {
        element['isChecked'] = false;
      }

      for (var element in _genderList) {
        element['isChecked'] = false;
      }
    });
  }
}
