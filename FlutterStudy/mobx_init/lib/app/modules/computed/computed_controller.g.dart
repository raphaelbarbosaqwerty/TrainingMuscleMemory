// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'computed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ComputedController on _ComputedControllerBase, Store {
  Computed<String> _$nomeCompletoComputed;

  @override
  String get nomeCompleto =>
      (_$nomeCompletoComputed ??= Computed<String>(() => super.nomeCompleto,
              name: '_ComputedControllerBase.nomeCompleto'))
          .value;

  final _$nomeAtom = Atom(name: '_ComputedControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$sobrenomeAtom = Atom(name: '_ComputedControllerBase.sobrenome');

  @override
  String get sobrenome {
    _$sobrenomeAtom.reportRead();
    return super.sobrenome;
  }

  @override
  set sobrenome(String value) {
    _$sobrenomeAtom.reportWrite(value, super.sobrenome, () {
      super.sobrenome = value;
    });
  }

  final _$_ComputedControllerBaseActionController =
      ActionController(name: '_ComputedControllerBase');

  @override
  dynamic mudarNome(String novoNome) {
    final _$actionInfo = _$_ComputedControllerBaseActionController.startAction(
        name: '_ComputedControllerBase.mudarNome');
    try {
      return super.mudarNome(novoNome);
    } finally {
      _$_ComputedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarSobreNome(String novoNome) {
    final _$actionInfo = _$_ComputedControllerBaseActionController.startAction(
        name: '_ComputedControllerBase.mudarSobreNome');
    try {
      return super.mudarSobreNome(novoNome);
    } finally {
      _$_ComputedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
sobrenome: ${sobrenome},
nomeCompleto: ${nomeCompleto}
    ''';
  }
}
