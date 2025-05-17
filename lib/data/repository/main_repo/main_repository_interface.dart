import 'package:rickandmorty/data/models/results_model/results_model.dart';

import '../../models/main_model/main_model.dart';

abstract interface class IMainRepository{
  Future<MainModel> fetchCharacter();
  Future<ResultsModel> fetchCharacterDetails(int id);
}