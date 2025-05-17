import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/main_model/main_model.dart';
import 'package:rickandmorty/data/models/results_model/results_model.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_interface.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_local.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_remote.dart';

class MainRepository implements IMainRepository {

  MainRepository({
    required this.localRepo,
    required this.remoteRepo,
  });

  MainRepositoryLocal localRepo;
  MainRepositoryRemote remoteRepo;

  @override
  Future<MainModel> fetchCharacter() async {
    final isConnect = await Connectivity().checkConnectivity();
    final isOnline =
        isConnect.contains(ConnectivityResult.mobile) ||
            isConnect.contains(ConnectivityResult.wifi);
    if (isOnline) {
      final remoteCharacter = await remoteRepo.fetchCharacter();
      return remoteCharacter;
    } else {
      final localCharacter = await localRepo.fetchCharacter();
      return localCharacter;
    }
  }

  @override
  Future<ResultsModel> fetchCharacterDetails(int id) async {
    final isConnect = await Connectivity().checkConnectivity();
    final isOnline =
        isConnect.contains(ConnectivityResult.mobile) ||
            isConnect.contains(ConnectivityResult.wifi);
    if (isOnline) {
      final remoteCharacter = await remoteRepo.fetchCharacterDetails(id);
      return remoteCharacter;
    } else {
      final localCharacter = await localRepo.fetchCharacterDetails(id);
      return localCharacter;
    }
  }
}