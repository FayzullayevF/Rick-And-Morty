import 'package:bloc/bloc.dart';
import 'package:rickandmorty/data/repository/main_repository.dart';
import 'package:rickandmorty/features/home/blocs/character/character_event.dart';
import 'package:rickandmorty/features/home/blocs/character/character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState>{
  final MainRepository _repo;
  CharacterBloc({required MainRepository repo}) : _repo = repo, super(CharacterState.initial()){
    on<CharacterLoad>(_onLoad);
  }


  Future<void> _onLoad(CharacterEvent event, Emitter<CharacterState> emit)async{
    final character = await _repo.fetchCharacters();
    emit(state.copyWith(status: CharacterStatus.success, model: character));
  }
}