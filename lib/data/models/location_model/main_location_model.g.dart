// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainLocationModelImpl _$$MainLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainLocationModelImpl(
      info: InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      location: (json['results'] as List<dynamic>)
          .map((e) => LocationResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MainLocationModelImplToJson(
        _$MainLocationModelImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.location,
    };
