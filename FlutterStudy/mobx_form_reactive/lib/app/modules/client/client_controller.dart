import 'package:mobx/mobx.dart';

part 'client_controller.g.dart';

class ClientController = _ClientControllerBase with _$ClientController;

abstract class _ClientControllerBase with Store {
  
  @observable
  String name;

  @action
  changeName(String value) => name = value;

  @observable
  String email;

  @action
  changeEmail(String value) => email = value;

  @observable
  String cpf;

  @action
  changeCpf(String value) => cpf = value;

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  @action
  salvarDados() {
    print(name);
    print(email);
    print(cpf);
  }

  String validateName() {
    if (name == null || name.isEmpty) {
      return "Nome é obrigatório";
    }

    return null;
  }

  String validateEmail() {
    if (email == null || email.isEmpty) {
      return "Email é obrigatório";
    }

    return null;
  }

  String validateCpf() {
    if (cpf == null || cpf.isEmpty) {
      return "CPF é obrigatório";
    }

    return null;
  }
}
