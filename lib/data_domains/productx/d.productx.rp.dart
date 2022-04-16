part of '_index.dart';

class ProductxRepo {
  Stream<List<Product>> streamItems(
    String collection,
  ) {
    return FbFirestore.streamItems(collection).map((event) {
      final docs = event.docs;
      List<Product> list = [];
      for (var item in docs) {
        list.add(Product.fromMap(item.data()));
      }
      return list;
    });
  }

  Stream<Product?> streamItem(
    String collection,
    String doc,
  ) {
    return FbFirestore.streamItem(collection, doc).map((event) {
      final data = event.data();
      if (data != null) {
        return Product.fromMap(data);
      }
      return null;
    });
  }

  Future<List<Product>> readItems(
    String collection,
    String doc,
  ) async {
    final querySnapshot = await FbFirestore.readItems(collection);
    final docs = querySnapshot.docs;
    List<Product> list = [];
    for (var item in docs) {
      list.add(Product.fromMap(item.data()));
    }
    return list;
  }

  Future<Product?> readItem(
    String collection,
    String doc,
  ) async {
    final docSnapshot = await FbFirestore.readItem(collection, doc);
    final data = docSnapshot.data();
    if (data != null) {
      return Product.fromMap(data);
    }
    return null;
  }

  Future<void> createItem(
    String collection,
    String doc,
    Product product,
  ) async {
    final data = product.toMap();
    return await FbFirestore.createItem(collection, doc, data);
  }

  Future<void> updateItem(
    String collection,
    String doc,
    Product product,
  ) async {
    final data = product.toMap();
    return await FbFirestore.updateItem(collection, doc, data);
  }

  Future<void> deleteItem(
    String collection,
    String doc,
  ) async {
    return await FbFirestore.deleteItem(collection, doc);
  }
}
