import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rickandmorty/core/routing/routes.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_interface.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository_remote.dart';
import 'package:rickandmorty/features/home/blocs/location_bloc/location_bloc.dart';
import 'package:rickandmorty/features/home/blocs/location_bloc/location_event.dart';
import 'package:rickandmorty/features/home/pages/character_page.dart';
import 'package:rickandmorty/features/home/pages/detail_page.dart';
import 'package:rickandmorty/features/home/pages/location_page.dart';

import '../../features/home/blocs/character_bloc/character_bloc.dart';
import '../../features/home/blocs/character_bloc/character_event.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.characters,
  routes: [
    GoRoute(
      path: Routes.characters,
      builder: (context, state) => BlocProvider(
        create: (context) => CharacterBloc(
          repo: context.read<MainRepositoryRemote>(),
        )..add(CharacterLoad()),
        child: CharacterPage(),
      ),
    ),
    GoRoute(
      path: Routes.detail,
      builder: (context, state) => BlocProvider(
        create: (context) => CharacterBloc(
          repo: context.read<MainRepositoryRemote>(),
        )..add(
            CharacterDetail(id: int.parse(state.pathParameters['id']!)),
          ),
        child: DetailPage(),
      ),
    ),
    GoRoute(
      path: Routes.locations,
      builder: (context, state) => BlocProvider(
        create: (context) =>
            LocationBloc(repo: context.read())..add(LocationLoad()),
        child: LocationPage(),
      ),
    ),
  ],
);
