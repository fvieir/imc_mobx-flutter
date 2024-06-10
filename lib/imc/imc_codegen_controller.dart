import 'package:mobx/mobx.dart';

part 'imc_codegen_controller.g.dart';

class ImcCodegenController = ImcCodegenControllerBase with _$ImcCodegenController;

abstract class ImcCodegenControllerBase with Store {

  @observable
  int value = 0;

  @observable
  String user = '';

  @computed
  String get saudacao => 'Olá Novamente $user';

  @action
  void increment() {
    user = 'Fabrício';
    value++;
  }
}