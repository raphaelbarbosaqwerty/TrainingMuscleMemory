import 'package:slidy_bottomnavbar/app/modules/start/submodules/home/pages/second.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/second', child: (_, args) => SecondPage())
      ];

  static Inject get to => Inject<HomeModule>.of();
}
