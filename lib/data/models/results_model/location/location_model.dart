import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'location_model.freezed.dart';

part 'location_model.g.dart';

@freezed
abstract class LocationInResultModel with _$LocationInResultModel {
  const factory LocationInResultModel({
    required String name,
    required String url,
  }) = _LocationInResultModel;

  factory LocationInResultModel.fromJson(Map<String, dynamic> json) =>
      _$LocationInResultModelFromJson(json);
}

class LocationInResultModelAdapter extends TypeAdapter<LocationInResultModel> {
  @override
  final int typeId = 5;

  @override
  LocationInResultModel read(BinaryReader reader) {
    return LocationInResultModel(
      name: reader.read(),
      url: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, LocationInResultModel obj) {
    writer.write(obj.name);
    writer.write(obj.url);
  }
}
