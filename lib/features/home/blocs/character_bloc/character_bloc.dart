import 'package:bloc/bloc.dart';
import 'package:rickandmorty/data/repository/main_repo/main_repository.dart';

import '../../../../data/repository/main_repo/main_repository_interface.dart';
import 'character_event.dart';
import 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final IMainRepository _repo;

  CharacterBloc({required IMainRepository repo})
    : _repo = repo,
      super(CharacterState.initial()) {
    on<CharacterLoad>(_onLoad);
    on<CharacterDetail>(_onCharacterDetailLoad);
  }

  Future<void> _onLoad(
    CharacterEvent event,
    Emitter<CharacterState> emit,
  ) async {
    final character = await _repo.fetchCharacter();
    emit(state.copyWith(status: CharacterStatus.success, model: character));
  }

  Future<void> _onCharacterDetailLoad(
    CharacterDetail event,
    Emitter<CharacterState> emit,
  ) async {
    final characterDetail = await _repo.fetchCharacterDetails(event.id);
    emit(
      state.copyWith(results: characterDetail, status: CharacterStatus.success),
    );
  }
}
