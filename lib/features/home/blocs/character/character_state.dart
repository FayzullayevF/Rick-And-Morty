import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/main_model/main_model.dart';

part 'character_state.freezed.dart';

enum CharacterStatus {  error, loading, success }

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({required CharacterStatus status, required MainModel? model}) = _CharacterState;

  factory CharacterState.initial() {
    return CharacterState(status: CharacterStatus.loading, model: null);
  }
}
