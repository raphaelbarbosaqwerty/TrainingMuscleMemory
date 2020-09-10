import 'client_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'client_page.dart';

class ClientModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ClientController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ClientPage()),
      ];

  static Inject get to => Inject<ClientModule>.of();
}
