import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/location_model/location_list_model/location_result_model.dart';

import '../info_model/info_model.dart';
part 'main_location_model.freezed.dart';
part 'main_location_model.g.dart';
@freezed
abstract class MainLocationModel with _$MainLocationModel{
  const factory MainLocationModel({required InfoModel model, required LocationResultModel location}) = _MainLocationModel;
  factory MainLocationModel.fromJson(Map<String,dynamic> json)=> _$MainLocationModelFromJson(json);
}