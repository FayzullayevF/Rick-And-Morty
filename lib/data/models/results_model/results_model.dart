import 'package:freezed_annotation/freezed_annotation.dart';

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
