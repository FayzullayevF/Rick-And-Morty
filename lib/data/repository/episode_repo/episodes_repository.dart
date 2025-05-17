import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/episodes_model/episodes_model.dart';
import 'package:rickandmorty/data/repository/episode_repo/episodes_repository_local.dart';
import 'package:rickandmorty/data/repository/episode_repo/episodes_repository_remote.dart';
import 'package:rickandmorty/data/repository/episode_repo/episodes_repositpory_interface.dart';

class EpisodesRepository implements IEpisodesRepository {
  final EpisodesRepositoryLocal localRepo;
  final EpisodesRepositoryRemote remoteRepo;
  final ApiClient client;

  EpisodesRepository({
    required this.localRepo,
    required this.remoteRepo,
    required this.client,
  });
@override
  Future<EpisodesModel> fetchEpisodes() async {
    final isConnect = await Connectivity().checkConnectivity();
    final isOnline = isConnect.contains(ConnectivityResult.mobile) || isConnect.contains(ConnectivityResult.wifi);
    if(isOnline){
      final remoteEpisodes = await remoteRepo.fetchEpisodes();
      return remoteEpisodes;
    }else{
      final localEpisodes = await localRepo.fetchEpisodes();
      return localEpisodes;
    }
  }
}
