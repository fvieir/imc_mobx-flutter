import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/observable_list/observable_controller.dart';

class ObservableListPage extends StatefulWidget {
  const ObservableListPage({super.key});

  @override
  State<ObservableListPage> createState() => _ObservableListPageState();
}

class _ObservableListPageState extends State<ObservableListPage> {
  final controller = ObservableController();

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
                  itemBuilder: (context, index) => CheckboxListTile(
                    value: false,
                    onChanged: (value) {},
                    title: Text(controller.productList[index].name),
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
                child: const Text('Carregar'))
          ],
        ));
  }
}
