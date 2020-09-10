import 'package:mobx/mobx.dart';
import 'package:slidy_pokemon/app/modules/home/models/pokemon_model.dart';
import 'package:slidy_pokemon/app/modules/home/repositories/pokemon_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokemonRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase(this.repository) {
    fetchPokemons();
  }

  @action
  fetchPokemons() {
    pokemons = repository.getAllPokemons().asObservable();
  }
}
