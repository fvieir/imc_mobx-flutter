import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/modelo_observado/modelo_observador_controller.dart';

class ModeloObservadoPage extends StatefulWidget {
  const ModeloObservadoPage({super.key});

  @override
  State<ModeloObservadoPage> createState() => _ModeloObservadoPageState();
}

class _ModeloObservadoPageState extends State<ModeloObservadoPage> {
  final controller = ModeloObservadorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Produto'),
        ),
        body: Column(
          children: [
            Observer(
              builder: (context) => Expanded(
                child: ListView.builder(
                  itemCount: controller.productList.length,
                  itemBuilder: (context, index) => Observer(
                    builder: (context) => CheckboxListTile(
                      value: controller.productList[index].selected,
                      onChanged: (value) {
                        controller.productList[index].selected =
                            !controller.productList[index].selected;
                      },
                      title:
                          Text(controller.productList[index].productModel.name),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  controller.add();
                },
                child: const Text('Adicionar')),
            TextButton(
                onPressed: () {
                  controller.load();
                },
                child: const Text('Carregar')),
            TextButton(
                onPressed: () {
                  controller.remove(0);
                },
                child: const Text('remover'))
          ],
        ));
  }
}
