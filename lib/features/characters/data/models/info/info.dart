import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class InfoModel with _$InfoModel {
  const factory InfoModel({
    final int? count,
    final int? pages,
    String? next,
    String? prev,
  }) = _InfoModel;
  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
}
