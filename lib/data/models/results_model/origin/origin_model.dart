import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'origin_model.freezed.dart';

part 'origin_model.g.dart';

@freezed
abstract class OriginInResultModel with _$OriginInResultModel {
  const factory OriginInResultModel({
    required String name,
    required String url,
  }) = _OriginInResultModel;

  factory OriginInResultModel.fromJson(Map<String, dynamic> json) =>
      _$OriginInResultModelFromJson(json);
}

class OriginResultModelAdapter extends TypeAdapter<OriginInResultModel>{
  @override
  final int typeId = 4;
  @override
  OriginInResultModel read(BinaryReader reader) {
  return OriginInResultModel(name: reader.read(), url: reader.read());
  }


  @override
  void write(BinaryWriter writer, OriginInResultModel obj) {
    writer.write(obj.name);
    writer.write(obj.url);

  }

}