import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:rickandmorty/data/models/location_model/location_list_model/location_result_model.dart';

import '../info_model/info_model.dart';
part 'main_location_model.freezed.dart';
part 'main_location_model.g.dart';
@freezed
abstract class MainLocationModel with _$MainLocationModel {
  const factory MainLocationModel({
    @JsonKey(name: 'info') required InfoModel info,
    @JsonKey(name: 'results') required List<LocationResultModel> location,
  }) = _MainLocationModel;

  factory MainLocationModel.fromJson(Map<String, dynamic> json) =>
      _$MainLocationModelFromJson(json);
}

class MainLocationModelAdapter extends TypeAdapter<MainLocationModel> {
  @override
  final int typeId = 0;

  @override
  MainLocationModel read(BinaryReader reader) {
    final info = reader.read() as InfoModel;
    final location = (reader.read() as List).cast<LocationResultModel>();
    return MainLocationModel(info: info, location: location);
  }

  @override
  void write(BinaryWriter writer, MainLocationModel obj) {
    writer.write(obj.info);
    writer.write(obj.location);
  }
}