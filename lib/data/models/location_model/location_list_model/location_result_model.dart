import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_result_model.freezed.dart';
part 'location_result_model.g.dart';

@freezed
abstract class LocationResultModel with _$LocationResultModel {
  const factory LocationResultModel(
      {required int id, required String name, required String type, required String dimension, required List<
          String> residents, required String url, required String created,}) = _LocationResultModel;
  factory LocationResultModel.fromJson(Map<String,dynamic> json)=> _$LocationResultModelFromJson(json);
}