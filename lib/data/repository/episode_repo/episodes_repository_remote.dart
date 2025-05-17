import 'package:hive/hive.dart';
import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/episodes_model/episodes_model.dart';
import 'package:rickandmorty/data/repository/episode_repo/episodes_repositpory_interface.dart';

class EpisodesRepositoryRemote implements IEpisodesRepository{
  final Box<EpisodesModel> box = Hive.box<EpisodesModel>("episode");
  ApiClient client;
  EpisodesRepositoryRemote({required this.client});
@override
  Future<EpisodesModel> fetchEpisodes()async{
    var rawEpisodes = await client.fetchEpisodes();
    final episodes = EpisodesModel.fromJson(rawEpisodes);
    await box.clear();
    await box.add(episodes);
    await box.compact();
    return episodes;
  }
}