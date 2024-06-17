import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';
import 'package:mobx_imc/modelo_observado/produto_store.dart';
part 'modelo_observador_controller.g.dart';

class ModeloObservadorController = ModeloObservadorControllerBase
    with _$ModeloObservadorController;

abstract class ModeloObservadorControllerBase with Store {
  var productList = <ProdutoStore>[].asObservable();

  @action
  void load() {
    productList.addAll([
      ProdutoStore(productModel: ProductModel(name: 'PC'), selected: false),
      ProdutoStore(
          productModel: ProductModel(name: 'Monitor'), selected: false),
      ProdutoStore(
          productModel: ProductModel(name: 'Teclado'), selected: false),
      ProdutoStore(productModel: ProductModel(name: 'Mouse'), selected: false),
    ]);
  }

  void add() {
    productList.add(
      ProdutoStore(productModel: ProductModel(name: 'PC'), selected: true),
    );
  }

  void remove(index) {
    productList.removeAt(index);
  }
}
