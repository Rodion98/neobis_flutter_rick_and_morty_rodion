import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class EpisodeModel with _$EpisodeModel {
  const factory EpisodeModel(
      {final int? id,
      final String? name,
      final String? air_date,
      final String? episode,
      final List<String?>? characters,
      final String? url,
      final DateTime? created}) = _EpisodeModel;

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);
}
