// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeModelImpl _$$EpisodeModelImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      air_date: json['air_date'] as String?,
      episode: json['episode'] as String?,
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      url: json['url'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$EpisodeModelImplToJson(_$EpisodeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.air_date,
      'episode': instance.episode,
      'characters': instance.characters,
      'url': instance.url,
      'created': instance.created?.toIso8601String(),
    };
