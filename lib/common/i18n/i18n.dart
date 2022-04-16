part of '_index.dart';

final i18nRM = RM.injectI18N<AppLocalizations>(
  {
    const Locale('en'): () => AppLocalizationsEn(),
    const Locale('ar'): () => AppLocalizationsAr(),
    const Locale('es'): () => AppLocalizationsEs(),
  },
  sideEffects: SideEffects.onData(
    (data) => RM.scaffold.showSnackBar(
      SnackBar(
        content: Text(data.helloWorld),
      ),
    ),
  ),
);

abstract class AppLocalizations {
  String get helloWorld;
  String welcome(Object name);
  String gender(Object gender);
  String plural(num howMany);
  String formattedNumber(int value);
  String date(DateTime date);
}
