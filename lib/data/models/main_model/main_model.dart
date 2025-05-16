import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/results_model/results_model.dart';

import '../info_model/info_model.dart';
part 'main_model.freezed.dart';
part 'main_model.g.dart';

@freezed
abstract class MainModel with _$MainModel{
    const factory MainModel ({required InfoModel info, required List<ResultsModel> results}) = _MainModel;
    factory MainModel.fromJson(Map<String,dynamic> json) => _$MainModelFromJson(json);
}