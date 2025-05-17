import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'location_result_model.freezed.dart';
part 'location_result_model.g.dart';

@freezed
abstract class LocationResultModel with _$LocationResultModel {
  const factory LocationResultModel(
      {required int id, required String name, required String type, required String dimension, required List<
          String> residents, required String url, required String created,}) = _LocationResultModel;
  factory LocationResultModel.fromJson(Map<String,dynamic> json)=> _$LocationResultModelFromJson(json);
}

class LocationResultModelAdapter extends TypeAdapter<LocationResultModel> {
  @override
  final int typeId = 2;

  @override
  LocationResultModel read(BinaryReader reader) {
    return LocationResultModel(
      id: reader.read(),
      name: reader.read(),
      type: reader.read(),
      dimension: reader.read() ,
      residents: reader.read() ,
      url: reader.read(),
      created: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, LocationResultModel obj) {
    writer.write(obj.id);
    writer.write(obj.name);
    writer.write(obj.type);
    writer.write(obj.dimension);
    writer.write(obj.residents);
    writer.write(obj.url);
    writer.write(obj.created);
  }
}