import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/main_model/main_model.dart';

class MainRepository{
  final ApiClient client;
  MainRepository({required this.client});
  MainModel? character;

  Future<MainModel> fetchCharacters() async{
    var rawCharacter = await client.fetchCharacters();
     character = MainModel.fromJson(rawCharacter);
    return character!;
  }
}