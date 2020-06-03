import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:uAuth2/app/shared/models/pokemon_model.dart';
import 'package:uAuth2/app/shared/repositories/poke_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase({@required this.repository}) {
    fetchAllPokemon();
  }

  @action
  fetchAllPokemon() {
    pokemons = repository.getAllPokemon().asObservable();
  }
}
