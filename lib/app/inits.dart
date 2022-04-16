part of '_index.dart';

Future<void> inits() async {
  logger.wtf('inits start');

  //* get widgets binding
  WidgetsFlutterBinding.ensureInitialized();

  //* init firebase
  if (!GetPlatform.isWindows) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  //* init environment configuration
  const envString = String.fromEnvironment('env', defaultValue: 'dev');
  Config.initConfig(envString);

  //* init storage
  if (!GetPlatform.isWeb) {
    await GetStorage.init(Config.values.storageName);
  }

  logger.wtf('inits success');
}
