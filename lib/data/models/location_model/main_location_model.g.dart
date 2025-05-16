// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainLocationModelImpl _$$MainLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainLocationModelImpl(
      model: InfoModel.fromJson(json['model'] as Map<String, dynamic>),
      location: LocationResultModel.fromJson(
          json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MainLocationModelImplToJson(
        _$MainLocationModelImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'location': instance.location,
    };
