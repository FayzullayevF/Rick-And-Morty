import 'package:rickandmorty/data/models/episodes_model/episodes_model.dart';

abstract interface class IEpisodesRepository{
  Future<EpisodesModel> fetchEpisodes();
 }