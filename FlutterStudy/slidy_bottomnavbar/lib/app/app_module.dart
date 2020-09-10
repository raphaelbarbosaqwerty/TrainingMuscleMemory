import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:slidy_bottomnavbar/app/app_controller.dart';
import 'package:slidy_bottomnavbar/app/app_widget.dart';
import 'package:slidy_bottomnavbar/app/modules/start/start_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController())
  ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: StartModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
