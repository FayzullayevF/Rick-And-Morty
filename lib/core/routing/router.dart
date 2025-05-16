import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rickandmorty/core/routing/routes.dart';
import 'package:rickandmorty/features/home/blocs/character/character_bloc.dart';
import 'package:rickandmorty/features/home/blocs/character/character_event.dart';
import 'package:rickandmorty/features/home/pages/character_page.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.characters,
  routes: [
    GoRoute(
      path: Routes.characters,
      builder:
          (context, state) => BlocProvider(
            create:
                (context) => CharacterBloc(
                  repo: context.read()
                )..add(CharacterLoad()), child: CharacterPage(),
          ),
    ),
  ],
);
