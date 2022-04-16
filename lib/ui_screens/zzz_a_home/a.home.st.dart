part of '_index.dart';

class ZHomeState {
  final String title;
  ZHomeState({
    this.title = 'ZHome',
  });

  ZHomeState copyWith({
    String? title,
  }) {
    return ZHomeState(
      title: title ?? this.title,
    );
  }

  @override
  String toString() => 'ZHomeState(title: $title)';
}
