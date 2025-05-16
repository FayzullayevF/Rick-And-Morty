import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rickandmorty/core/client.dart';
import 'package:rickandmorty/data/repository/main_repository.dart';

import '../data/repository/episodes_repository.dart';
import '../data/repository/locations_repository.dart';

List<SingleChildWidget> provider = [
  Provider(create: (context) => ApiClient()),
  RepositoryProvider(
    create: (context) => MainRepository(client: context.read()),
  ),
  RepositoryProvider(
    create: (context) => EpisodesRepository(client: context.read()),
  ),
  RepositoryProvider(
    create: (context) => LocationsRepository(client: context.read()),
  ),
];
