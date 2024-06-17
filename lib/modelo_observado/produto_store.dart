import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';

part 'produto_store.g.dart';

class ProdutoStore = ProdutoStoreBase with _$ProdutoStore;

abstract class ProdutoStoreBase with Store {
  @observable
  ProductModel productModel;

  @observable
  bool selected;

  ProdutoStoreBase({
    required this.selected,
    required this.productModel,
  });
}
