import 'package:rickandmorty/data/models/location_model/main_location_model.dart';

abstract interface class ILocationRepository{
  Future<MainLocationModel?> fetchLocations();
}