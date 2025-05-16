import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/info_model/info_model.dart';
import 'package:rickandmorty/data/models/results_model/results_model.dart';

class InfoModelConverter extends JsonConverter<InfoModel,Map<String, dynamic>>{
  const InfoModelConverter();

  @override
  InfoModel fromJson(Map<String, dynamic> json) {
    return InfoModel.fromJson(json);
  }
  Map<String, dynamic> convert(InfoModel input) {
    throw UnimplementedError();
  }
  @override
  Map<String, dynamic> toJson(InfoModel object) {
    throw UnimplementedError();
  }
}

class ResultModelConverter extends JsonConverter<List<ResultsModel>, List<dynamic>>{
  const ResultModelConverter();

  @override
  List<ResultsModel> fromJson(List<dynamic> json) {
    return json
        .map((e) => ResultsModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  List toJson(List<ResultsModel> object) {
    throw UnimplementedError();
  }

}
