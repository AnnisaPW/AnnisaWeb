part of '_index.dart';

class XfbAuthState {
  final String title;
  XfbAuthState({
    this.title = 'XfbAuth',
  });

  XfbAuthState copyWith({
    String? title,
  }) {
    return XfbAuthState(
      title: title ?? this.title,
    );
  }

  @override
  String toString() => 'XfbAuthState(title: $title)';
}
