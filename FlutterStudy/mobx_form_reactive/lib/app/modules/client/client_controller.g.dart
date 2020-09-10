// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientController on _ClientControllerBase, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_ClientControllerBase.isValid'))
      .value;

  final _$nameAtom = Atom(name: '_ClientControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_ClientControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$cpfAtom = Atom(name: '_ClientControllerBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$_ClientControllerBaseActionController =
      ActionController(name: '_ClientControllerBase');

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.changeCpf');
    try {
      return super.changeCpf(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic salvarDados() {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.salvarDados');
    try {
      return super.salvarDados();
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
cpf: ${cpf},
isValid: ${isValid}
    ''';
  }
}
