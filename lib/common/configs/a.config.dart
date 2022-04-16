part of '_index.dart';

//! singleton methods
//* 1. Factory constructor
// class SingletonOne {
//   SingletonOne._privateConstructor();
//   static final SingletonOne _instance = SingletonOne._privateConstructor();
//   factory SingletonOne() => _instance;
// }

//* 2. Static field with getter
// class SingletonTwo {
//   SingletonTwo._privateConstructor();
//   static final SingletonTwo _instance = SingletonTwo._privateConstructor();
//   static SingletonTwo get instance => _instance;
// }

//* 3. Static field
// class SingletonThree {
//   SingletonThree._privateConstructor();
//   static final SingletonThree instance = SingletonThree._privateConstructor();
// }

//! singleton example
// class Student {
//   String name = 'joko';
//   static final Student _x = Student._internal();
//   Student._internal();
//   factory Student() => _x;
// }

class Config {
  static IConfig values = ConfigDev();

  static final Config _singleton = Config._internal();
  Config._internal();
  factory Config() => _singleton;

  static initConfig(String envString) {
    switch (envString) {
      case 'prod':
        return values = ConfigProd();
      case 'stage':
        return values = ConfigStage();
      default:
        return values = ConfigDev();
    }
  }
}
