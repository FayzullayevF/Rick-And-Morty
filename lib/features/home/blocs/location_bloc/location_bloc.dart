import 'package:bloc/bloc.dart';
import 'package:rickandmorty/data/repository/locations_repo/location_repository_interface.dart';
import 'package:rickandmorty/data/repository/locations_repo/locations_repository.dart';
import 'package:rickandmorty/features/home/blocs/location_bloc/location_event.dart';
import 'package:rickandmorty/features/home/blocs/location_bloc/location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ILocationRepository _repository;

  LocationBloc({required LocationsRepository repo})
      : _repository = repo,
        super(LocationState.initial()){
    on<LocationLoad>(_onLoad);
  }
  Future<void> _onLoad(LocationEvent event, Emitter<LocationState> emit) async {
    final locations = await _repository.fetchLocations();
    emit(state.copyWith(status: LocationStatus.success, model: locations));
  }

}

