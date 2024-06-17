// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ObservableController on ObservableControllerBase, Store {
  late final _$productListAtom =
      Atom(name: 'ObservableControllerBase.productList', context: context);

  @override
  ObservableList<ProductModel> get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(ObservableList<ProductModel> value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  late final _$ObservableControllerBaseActionController =
      ActionController(name: 'ObservableControllerBase', context: context);

  @override
  void load() {
    final _$actionInfo = _$ObservableControllerBaseActionController.startAction(
        name: 'ObservableControllerBase.load');
    try {
      return super.load();
    } finally {
      _$ObservableControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productList: ${productList}
    ''';
  }
}
