import 'package:dio/dio.dart';
import 'package:slidy_pokemon/app/modules/home/models/pokemon_model.dart';

class PokemonRepository {
  final Dio dio;

  PokemonRepository(this.dio);

  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');
    List<PokemonModel> list = [];
    for (var json in (response.data['results'] as List)) {
      PokemonModel model = PokemonModel(name: json['name']);
      list.add(model);
    }

    return list;
  }
}