import 'package:dio/dio.dart';
import 'package:slidy_learning/app/modules/login/login_module.dart';
import 'package:slidy_learning/app/shared/utils/constants.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:slidy_learning/app/app_widget.dart';
import 'package:slidy_learning/app/modules/home/home_module.dart';

import 'modules/home/home_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/login', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
