import 'package:hive/hive.dart';
import 'package:rickandmorty/data/models/episodes_model/episodes_model.dart';
import 'package:rickandmorty/data/repository/episode_repo/episodes_repositpory_interface.dart';

class EpisodesRepositoryLocal implements IEpisodesRepository {
  final Box<EpisodesModel> box = Hive.box<EpisodesModel>("episode");

  @override
  Future<EpisodesModel> fetchEpisodes() async {
    return box.values.single;
  }
}
