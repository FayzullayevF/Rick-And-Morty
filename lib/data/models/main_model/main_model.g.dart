// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainModelImpl _$$MainModelImplFromJson(Map<String, dynamic> json) =>
    _$MainModelImpl(
      info: InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MainModelImplToJson(_$MainModelImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
