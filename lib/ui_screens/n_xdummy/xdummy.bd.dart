part of '_index.dart';

class XdummyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<XdummyController>(
      () => XdummyController(),
    );
  }
}
