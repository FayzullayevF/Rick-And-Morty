import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes_model.freezed.dart';
part 'episodes_model.g.dart';

@freezed
abstract class EpisodesResultModel with _$EpisodesResultModel {
  const factory EpisodesResultModel({
    required int id,
    required String name,
    @JsonKey(name: "air_date")
    required String airDate,
    required String episode,
    required List<String> characters,
    required String url,
    required String created,
  }) = _EpisodesResultModel;
  factory EpisodesResultModel.fromJson(Map<String, dynamic> json)=> _$EpisodesResultModelFromJson(json);
}
