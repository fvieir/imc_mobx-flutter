import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/imc/imc_codegen_controller.dart';

class ImcCodegenPage extends StatefulWidget {
  const ImcCodegenPage({ super.key });

  @override
  State<ImcCodegenPage> createState() => _ImcCodegenPageState();
}

class _ImcCodegenPageState extends State<ImcCodegenPage> {
  final _counter = ImcCodegenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) =>  Text(
                _counter.saudacao
              ),
            ),
            Observer(
              builder: (_) => Text(
                '${_counter.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _counter.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}