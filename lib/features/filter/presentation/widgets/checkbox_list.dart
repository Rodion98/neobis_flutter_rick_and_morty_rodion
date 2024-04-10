import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/io_ui.dart';

class CheckboxList extends StatelessWidget {
  const CheckboxList({
    super.key,
    required this.text,
    required this.value,
    required this.onChanged,
  });

  final String text;
  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        checkColor: AppColors.searchFiledColor,
        activeColor: AppColors.blueText,
        value: value,
        title: Text(
          text,
          style: AppTextStyle.filterWhite16,
        ),
        onChanged: onChanged);
  }
}
