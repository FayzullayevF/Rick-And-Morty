import 'package:hive/hive.dart';
import 'package:rickandmorty/data/models/main_model/main_model.dart';
import 'package:rickandmorty/data/models/results_model/results_model.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_interface.dart';

class MainRepositoryLocal implements IMainRepository{
    final Box<MainModel> box = Hive.box<MainModel>("character");
    final Box<ResultsModel> detailBox = Hive.box<ResultsModel>("characterDetail");
    @override
    Future<MainModel> fetchCharacter()async{
      final String key = "character";
      final character = box.get(key);
      return character!;
    }

    @override
  Future<ResultsModel> fetchCharacterDetails(int id)async{
      return detailBox.values.firstWhere((e)=>e.id == id);
    }
}