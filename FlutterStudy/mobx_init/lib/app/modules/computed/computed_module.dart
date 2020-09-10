import 'computed_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'computed_page.dart';

class ComputedModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ComputedController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ComputedPage()),
      ];

  static Inject get to => Inject<ComputedModule>.of();
}
