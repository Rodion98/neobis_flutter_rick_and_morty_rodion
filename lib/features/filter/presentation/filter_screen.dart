import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/assets.gen.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/gen/strings.g.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/src/io_ui.dart';

@RoutePage()
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          _buildCheckboxColumn(),
        ]),
      ),
    );
  }
}

Column _buildCheckboxColumn() {
  bool? isChecked = false;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildCheckBox(isChecked, t.alive),
      _buildCheckBox(isChecked, t.dead),
      _buildCheckBox(isChecked, t.unknown),
      SizedBox(height: 26),
      Divider(color: AppColors.searchFiledColor),
      SizedBox(height: 26),
      Text(
        t.gender,
        style: AppTextStyle.filterpart10,
      ),
      SizedBox(height: 26),
      _buildCheckBox(isChecked, t.male),
      _buildCheckBox(isChecked, t.female),
      _buildCheckBox(isChecked, t.nogender),
    ],
  );
}

Row _buildCheckBox(bool isChecked, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Checkbox(
        value: isChecked,
        onChanged: (bool? newValue) {
          isChecked = newValue ?? false;
        },
        side: BorderSide(color: AppColors.greyUsual),
      ),
      Text(
        text,
        style: AppTextStyle.filterWhite16,
      )
    ],
  );
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
      backgroundColor: AppColors.searchFiledColor,
      title: Container(
        padding: EdgeInsets.only(bottom: 12, left: 16, right: 15, top: 12),
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
