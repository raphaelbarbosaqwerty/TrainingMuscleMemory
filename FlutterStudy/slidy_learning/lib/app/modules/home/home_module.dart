import 'package:slidy_learning/app/modules/home/repositories/pokemon_repository.dart';
import 'package:slidy_learning/app/shared/utils/constants.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController(i.get<PokemonRepository>())),
    Bind((i) => PokemonRepository(i.get<Dio>())),
    Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
  ];

}
