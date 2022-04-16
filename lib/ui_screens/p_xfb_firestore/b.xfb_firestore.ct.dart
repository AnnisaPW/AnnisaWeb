part of '_index.dart';

class XfbFirestoreCtrl extends StateNotifier<XfbFirestoreState> {
  Ref ref;
  XfbFirestoreCtrl(this.ref) : super(XfbFirestoreState()) {
    _init();
  }

  _init() {}

  Product _generateData() {
    return Product(
      id: 'testDocId',
      name: 'udin sedunia',
      total: Random().nextInt(100),
    );
  }

  createItem() => ref.read(pvPruductsSv.notifier).createItem('testColl', 'testDocId', _generateData());
  readItem() => ref.read(pvPruductsSv.notifier).readItem('testColl', 'testDocId');
  updateItem() => ref.read(pvPruductsSv.notifier).updateItem('testColl', 'testDocId', _generateData());
  deleteItem() => ref.read(pvPruductsSv.notifier).deleteItem('testColl', 'testDocId');
}
