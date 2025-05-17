import 'package:hive/hive.dart';
import 'package:rickandmorty/data/models/location_model/main_location_model.dart';
import 'package:rickandmorty/data/repository/locations_repo/location_repository_interface.dart';

class LocationRepositoryLocal implements ILocationRepository {
  final Box<MainLocationModel> box = Hive.box<MainLocationModel>('location');

  @override
  Future<MainLocationModel?> fetchLocations() async {
    return box.values.firstOrNull;
  }
}
