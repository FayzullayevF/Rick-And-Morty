// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodesModelImpl _$$EpisodesModelImplFromJson(Map<String, dynamic> json) =>
    _$EpisodesModelImpl(
      results:
          EpisodesResultModel.fromJson(json['results'] as Map<String, dynamic>),
      model: InfoModel.fromJson(json['model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodesModelImplToJson(_$EpisodesModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'model': instance.model,
    };
