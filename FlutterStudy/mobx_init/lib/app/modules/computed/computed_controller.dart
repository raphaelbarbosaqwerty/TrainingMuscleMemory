import 'package:mobx/mobx.dart';

part 'computed_controller.g.dart';

class ComputedController = _ComputedControllerBase with _$ComputedController;

abstract class _ComputedControllerBase with Store {
  
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomeCompleto => "$nome $sobrenome";

  @action
  mudarNome(String novoNome) {
    nome = novoNome;
  }

  @action
  mudarSobreNome(String novoNome) {
    sobrenome = novoNome;
  }
}
