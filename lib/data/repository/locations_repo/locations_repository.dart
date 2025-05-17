import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/location_model/main_location_model.dart';
import 'package:rickandmorty/data/repository/locations_repo/location_repository_interface.dart';
import 'package:rickandmorty/data/repository/locations_repo/location_repository_local.dart';
import 'package:rickandmorty/data/repository/locations_repo/location_repository_remote.dart';

class LocationsRepository implements ILocationRepository {
  final ApiClient client;
  final LocationRepositoryLocal localRepo;
  final LocationRepositoryRemote remoteRepo;


  LocationsRepository({required this.localRepo,required  this.remoteRepo, required this.client});
@override
  Future<MainLocationModel?> fetchLocations() async {
   final isConnect = await Connectivity().checkConnectivity();
   final isOnline = isConnect.contains(ConnectivityResult.mobile) || isConnect.contains(ConnectivityResult.wifi);
   if(isOnline){
      final remoteLocation = await remoteRepo.fetchLocations();
      return remoteLocation;
   }else{
     final localLocations = await localRepo.fetchLocations();
     return localLocations;
   }
}}
