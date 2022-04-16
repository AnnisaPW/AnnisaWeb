part of '_index.dart';

final pvTemplateSv = StateNotifierProvider<TemplateService, Template>((ref) => TemplateService(ref));

final pvTemplateRepo = Provider<TemplateRepo>((ref) {
  return TemplateRepo();
});
