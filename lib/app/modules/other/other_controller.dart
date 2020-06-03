import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:uAuth2/app/shared/models/pokemon_model.dart';
import 'package:uAuth2/app/shared/repositories/poke_repository.dart';

part 'other_controller.g.dart';

class OtherController = _OtherControllerBase with _$OtherController;

abstract class _OtherControllerBase with Store {
  final PokeRepository repository;
  final String filter;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _OtherControllerBase({@required this.repository, this.filter}) {
    fetchAbility();
  }

  @action
  fetchAbility() {
    pokemons = repository.getAbility().asObservable();
  }
}
