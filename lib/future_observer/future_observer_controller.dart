import 'package:mobx/mobx.dart';
part 'future_observer_controller.g.dart';

class FutureObserverController = FutureObserverControllerBase
    with _$FutureObserverController;

abstract class FutureObserverControllerBase with Store {
  @observable
  var nome = ObservableFuture.value('');

  Future<void> buscarNome() async {
    final buscaNome =
        Future.delayed(const Duration(seconds: 2), () => 'Fabricio Dourado');
    nome = ObservableFuture(buscaNome);

    print(await nome);
  }
}
