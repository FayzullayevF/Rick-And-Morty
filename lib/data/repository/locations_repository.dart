import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/location_model/main_location_model.dart';

class LocationsRepository {
  final ApiClient client;

  LocationsRepository({required this.client});

  Future<MainLocationModel> fetchCharacters() async {
    var rawCharacter = await client.fetchCharacters();
    final locations = MainLocationModel.fromJson(rawCharacter);
    return locations;
  }
}
