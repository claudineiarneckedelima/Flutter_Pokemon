import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uAuth2/app/shared/models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository({@required this.dio});

  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');

    List<PokemonModel> list = [];

    for (var item in response.data['results'] as List) {
      PokemonModel model = PokemonModel(name: item['name']);
      list.add(model);
    }

    return list;
  }
}