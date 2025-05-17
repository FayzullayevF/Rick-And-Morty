import 'package:freezed_annotation/freezed_annotation.dart';

import '../info_model/info_model.dart';
import 'episodes_result/episodes_model.dart';
part 'episodes_model.freezed.dart';
part 'episodes_model.g.dart';

@freezed
abstract class EpisodesModel with _$EpisodesModel{
  const factory EpisodesModel({required List<EpisodesResultModel> results, required InfoModel model}) = _EpisodesModel;
  factory EpisodesModel.fromJson(Map<String, dynamic> json)=> _$EpisodesModelFromJson(json);
}