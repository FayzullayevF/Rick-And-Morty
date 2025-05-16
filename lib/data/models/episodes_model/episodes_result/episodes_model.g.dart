// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodesResultModelImpl _$$EpisodesResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodesResultModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      airDate: json['air_date'] as String,
      episodes: json['episodes'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
      created: json['created'] as String,
    );

Map<String, dynamic> _$$EpisodesResultModelImplToJson(
        _$EpisodesResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.airDate,
      'episodes': instance.episodes,
      'characters': instance.characters,
      'url': instance.url,
      'created': instance.created,
    };
