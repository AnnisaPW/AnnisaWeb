part of '_index.dart';

class TemplateState {
  final String title;
  TemplateState({
    this.title = 'Template',
  });

  TemplateState copyWith({
    String? title,
  }) {
    return TemplateState(
      title: title ?? this.title,
    );
  }

  @override
  String toString() => 'TemplateState(title: $title)';
}
