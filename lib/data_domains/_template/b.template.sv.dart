part of '_index.dart';

class TemplateService extends StateNotifier<Template> {
  Ref ref;
  TemplateService(this.ref) : super(Template()) {
    _init();
  }

  _init() {}
}
