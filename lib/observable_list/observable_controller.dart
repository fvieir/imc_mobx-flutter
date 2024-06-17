import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';

part 'observable_controller.g.dart';

class ObservableController = ObservableControllerBase
    with _$ObservableController;

abstract class ObservableControllerBase with Store {
  @observable
  var productList = <ProductModel>[].asObservable();

  @action
  void load() {
    productList.addAll([
      ProductModel(name: 'PC'),
      ProductModel(name: 'Notebook'),
      ProductModel(name: 'Celular'),
      ProductModel(name: 'Teclado'),
    ]);
  }

  void remove() {
    productList.removeAt(0);
  }

  void add() {
    productList.add(ProductModel(name: 'PC'));
  }
}
