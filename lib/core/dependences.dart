import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/repository/episode_repo/episodes_repository_local.dart';
import 'package:rickandmorty/data/repository/locations_repo/location_repository_local.dart';
import 'package:rickandmorty/data/repository/locations_repo/location_repository_remote.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_interface.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_local.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_remote.dart';

import '../data/repository/episode_repo/episodes_repository.dart';
import '../data/repository/episode_repo/episodes_repository_remote.dart';
import '../data/repository/locations_repo/locations_repository.dart';

List<SingleChildWidget> provider = [
  Provider(create: (context) => ApiClient()),
  Provider(create: (context) => LocationRepositoryLocal()),
  Provider(
    create: (context) => LocationRepositoryRemote(client: context.read()),
  ),
  Provider(
    create: (context) => MainRepositoryLocal(),
  ),
  Provider(
    create: (context) => MainRepositoryRemote(client: context.read()),
  ),
  RepositoryProvider<IMainRepository>(
    create:
        (context) => MainRepository(
          localRepo: context.read<MainRepositoryLocal>(),
          remoteRepo: context.read<MainRepositoryRemote>(),
        ),
  ),
  RepositoryProvider(
    create:
        (context) => EpisodesRepository(
          client: context.read(),
          localRepo: context.read<EpisodesRepositoryLocal>(),
          remoteRepo: context.read<EpisodesRepositoryRemote>(),
        ),
  ),
  RepositoryProvider(
    create:
        (context) => LocationsRepository(
          client: context.read(),
          localRepo: context.read<LocationRepositoryLocal>(),
          remoteRepo: context.read<LocationRepositoryRemote>(),
        ),
  ),
];
