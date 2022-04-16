part of '_index.dart';

class Snake {
  final List<int> snake;
  Snake({
    this.snake = const [],
  });

  Snake copyWith({
    List<int>? snake,
  }) {
    return Snake(
      snake: snake ?? this.snake,
    );
  }

  @override
  String toString() => 'Snake(snake: $snake)';
}
