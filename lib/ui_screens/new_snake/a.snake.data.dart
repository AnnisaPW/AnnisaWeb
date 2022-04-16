part of '_index.dart';

class SnakeData {
  final title = 'Snake';

  final width = 10;

  List<List<ReactiveModel<int?>>> listx = [];

  final food = [0, 0].inj();

  List<List<int>> snake = [
    [0, 2],
    [0, 1],
    [0, 0],
  ];
}
