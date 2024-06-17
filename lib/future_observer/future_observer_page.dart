import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/future_observer/future_observer_controller.dart';

class FutureObserverPage extends StatefulWidget {
  const FutureObserverPage({super.key});

  @override
  State<FutureObserverPage> createState() => _FutureObserverPageState();
}

class _FutureObserverPageState extends State<FutureObserverPage> {
  final controller = FutureObserverController();

  @override
  initState() {
    super.initState();
    controller.buscarNome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.buscarNome,
        child: const Icon(Icons.refresh),
      ),
      body: Observer(
        builder: (context) => FutureBuilder<String>(
          future: controller.nome,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const SizedBox.shrink();
              case ConnectionState.active:
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                if (snapshot.hasData) {
                  return Center(
                    child: Text(snapshot.data!),
                  );
                }

                return const Center(
                  child: Text('Não encontrado'),
                );
            }
          },
        ),
      ),
    );
  }
}
