import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:rickandmorty/data/models/results_model/results_model.dart';

import '../info_model/info_model.dart';
part 'main_model.freezed.dart';
part 'main_model.g.dart';

@freezed
abstract class MainModel with _$MainModel{
    const factory MainModel ({required InfoModel info, required List<ResultsModel> results}) = _MainModel;
    factory MainModel.fromJson(Map<String,dynamic> json) => _$MainModelFromJson(json);
}

class MainModelAdapter extends TypeAdapter<MainModel> {
    @override
    final int typeId = 6;

    @override
    MainModel read(BinaryReader reader) {
        final info = reader.read() as InfoModel;
        final results = (reader.read() as List).cast<ResultsModel>();
        return MainModel(info: info, results: results);
    }

    @override
    void write(BinaryWriter writer, MainModel obj) {
        writer.write(obj.info);
        writer.write(obj.results);
    }
}