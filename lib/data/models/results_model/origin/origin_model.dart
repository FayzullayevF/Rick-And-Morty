import 'package:freezed_annotation/freezed_annotation.dart';

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
