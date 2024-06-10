import 'package:mobx/mobx.dart';

class ImcController {

  final _counter = Observable(0);
  late Action increment;

  ImcController () {
    increment = Action(_incremet);
  }

  int get counter => _counter.value;

  void _incremet () {
    _counter.value ++;
  }

}