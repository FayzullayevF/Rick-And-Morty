import 'package:hive/hive.dart';
import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/main_model/main_model.dart';
import 'package:rickandmorty/data/models/results_model/results_model.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_interface.dart';

class MainRepositoryRemote implements IMainRepository {
  final ApiClient client;
  MainModel? model;

  MainRepositoryRemote({required this.client});

  @override
  Future<MainModel> fetchCharacter() async {
    final Box<MainModel> box = Hive.box<MainModel>("character");
    var rawCharacter = await client.fetchCharacters();
    model = MainModel.fromJson(rawCharacter);
    await box.clear();
    await box.add(model!);
    return model!;
  }

  @override
  Future<ResultsModel> fetchCharacterDetails(int id) async {
    final Box<ResultsModel> box = Hive.box<ResultsModel>("characterDetail");
    var rawCharacterDetail = await client.fetchCharacterDetail(id);
    final model = ResultsModel.fromJson(rawCharacterDetail);
    await box.clear();
    await box.add(model);
    return model;
  }
}
