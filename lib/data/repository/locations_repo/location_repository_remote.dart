import 'package:hive/hive.dart';
import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/location_model/main_location_model.dart';
import 'package:rickandmorty/data/repository/locations_repo/location_repository_interface.dart';

class LocationRepositoryRemote implements ILocationRepository{
  final Box<MainLocationModel> box = Hive.box<MainLocationModel>("location");
  ApiClient client;
  LocationRepositoryRemote({required this.client});
  @override
  Future<MainLocationModel> fetchLocations() async{
    final Box<MainLocationModel> box = Hive.box<MainLocationModel>("location");
    var rawLocations = await client.fetchLocations();
    final locations = MainLocationModel.fromJson(rawLocations);
    await box.clear();
    await box.add(locations);
    await box.compact();
    return locations;
  }
}