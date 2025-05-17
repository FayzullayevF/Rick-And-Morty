import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'info_model.freezed.dart';
part 'info_model.g.dart';

@freezed
abstract class InfoModel with _$InfoModel {
  const factory InfoModel({
    required int count,
    required int pages,
     String? next,
     String? prev,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, dynamic> json) => _$InfoModelFromJson(json);
}

class InfoModelAdapter extends TypeAdapter<InfoModel> {
  @override
  final int typeId = 1;

  @override
  InfoModel read(BinaryReader reader) {
    return InfoModel(
      count: reader.read() ,
      pages: reader.read() ,
      next: reader.read() ,
      prev: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, InfoModel obj) {
    writer.write(obj.count);
    writer.write(obj.pages);
    writer.write(obj.next);
    writer.write(obj.prev);
  }
}