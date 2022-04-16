part of '_index.dart';

class ProductxService extends StateNotifier<Productx> {
  Ref ref;
  ProductxService(this.ref) : super(Productx(productFuture: const AsyncLoading())) {
    createItem(
      'testColl',
      'testDocId',
      Product(id: 'testDocId'),
    );
    streamItem();
    readItem('testColl', 'testDocId');
  }

  late StreamSubscription subsItem;
  late StreamSubscription subsItems;

  streamItem() {
    subsItem = ref.read(pvPruductsRepo).streamItem('testColl', 'testDocId').listen((event) {
      state = state.copyWith(productStream: event);
    });
  }

  streamItems() {
    subsItem = ref.read(pvPruductsRepo).streamItems('testColl').listen((event) {
      state = state.copyWith(products: event);
    });
  }

  close() {
    subsItem.cancel();
    subsItems.cancel();
  }

  Future<void> createItem(
    String collection,
    String doc,
    Product product,
  ) async {
    await ref.read(pvPruductsRepo).createItem(collection, doc, product);
  }

  Future<void> readItem(
    String collection,
    String doc,
  ) async {
    state = state.copyWith(productFuture: const AsyncLoading());
    await 1.delay();
    final result = await ref.read(pvPruductsRepo).readItem(collection, doc);
    if (result != null) {
      state = state.copyWith(productFuture: AsyncData(result));
    }
  }

  Future<void> updateItem(
    String collection,
    String doc,
    Product product,
  ) async {
    await ref.read(pvPruductsRepo).updateItem(collection, doc, product);
  }

  Future<void> deleteItem(
    String collection,
    String doc,
  ) async {
    await ref.read(pvPruductsRepo).deleteItem(collection, doc);
  }
}
