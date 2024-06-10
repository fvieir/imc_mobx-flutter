// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_codegen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImcCodegenController on ImcCodegenControllerBase, Store {
  Computed<String>? _$saudacaoComputed;

  @override
  String get saudacao =>
      (_$saudacaoComputed ??= Computed<String>(() => super.saudacao,
              name: 'ImcCodegenControllerBase.saudacao'))
          .value;

  late final _$valueAtom =
      Atom(name: 'ImcCodegenControllerBase.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$userAtom =
      Atom(name: 'ImcCodegenControllerBase.user', context: context);

  @override
  String get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(String value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$ImcCodegenControllerBaseActionController =
      ActionController(name: 'ImcCodegenControllerBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$ImcCodegenControllerBaseActionController.startAction(
        name: 'ImcCodegenControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$ImcCodegenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
user: ${user},
saudacao: ${saudacao}
    ''';
  }
}
