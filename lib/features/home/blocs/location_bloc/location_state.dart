import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/location_model/main_location_model.dart';
part 'location_state.freezed.dart';

enum LocationStatus{loading, error, success}

@freezed
abstract class LocationState with _$LocationState{
  const factory LocationState({
    required LocationStatus status,
    required MainLocationModel? model,
}) = _LocationState;
  factory LocationState.initial(){
    return LocationState(status: LocationStatus.loading, model: null);
  }
}