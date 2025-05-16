import 'package:freezed_annotation/freezed_annotation.dart';

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
