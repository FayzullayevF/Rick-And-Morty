import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'location/location_model.dart';
import 'origin/origin_model.dart';

part 'results_model.freezed.dart';
part 'results_model.g.dart';

@freezed
abstract class ResultsModel with _$ResultsModel {
  const factory ResultsModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String image,
    required OriginInResultModel origin,
    required LocationInResultModel location,
    @JsonKey(name: 'episode') required List<String> episodes,
    required String url,
    required DateTime created,
  }) = _ResultsModel;

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);
}

class ResultsModelAdapter extends TypeAdapter<ResultsModel> {
  @override
  final int typeId = 7;

  @override
  ResultsModel read(BinaryReader reader) {
    return ResultsModel(
      id: reader.read(),
      name: reader.read(),
      status: reader.read(),
      species: reader.read(),
      type: reader.read(),
      gender: reader.read(),
      image: reader.read(),
      origin: reader.read(), // OriginInResultModel
      location: reader.read(), // LocationInResultModel
      episodes: (reader.read() as List).cast<String>(),
      url: reader.read(),
      created: DateTime.parse(reader.read()),
    );
  }

  @override
  void write(BinaryWriter writer, ResultsModel obj) {
    writer.write(obj.id);
    writer.write(obj.name);
    writer.write(obj.status);
    writer.write(obj.species);
    writer.write(obj.type);
    writer.write(obj.gender);
    writer.write(obj.image);
    writer.write(obj.origin);
    writer.write(obj.location);
    writer.write(obj.episodes);
    writer.write(obj.url);
    writer.write(obj.created.toIso8601String());
  }
}

