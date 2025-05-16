import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/models/episodes_model/episodes_model.dart';

class EpisodesRepository{
  ApiClient client;
  EpisodesRepository({required this.client});

  Future<EpisodesModel> fetchEpisodes()async{
    var rawEpisodes = await client.fetchEpisodes();
    final episodes = EpisodesModel.fromJson(rawEpisodes);
    return episodes;
  }
}