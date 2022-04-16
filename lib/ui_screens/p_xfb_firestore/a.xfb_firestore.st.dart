part of '_index.dart';

class XfbFirestoreState {
  final String title;
  XfbFirestoreState({
    this.title = 'XfbFirestore',
  });

  XfbFirestoreState copyWith({
    String? title,
  }) {
    return XfbFirestoreState(
      title: title ?? this.title,
    );
  }

  @override
  String toString() => 'XfbFirestoreState(title: $title)';
}
