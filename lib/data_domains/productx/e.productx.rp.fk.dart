part of '_index.dart';

class ProductxRepoFake implements ProductxRepo {
  @override
  Future<void> createItem(String collection, String doc, Product product) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteItem(String collection, String doc) {
    throw UnimplementedError();
  }

  @override
  Future<Product?> readItem(String collection, String doc) {
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> readItems(String collection, String doc) {
    throw UnimplementedError();
  }

  @override
  Stream<Product?> streamItem(String collection, String doc) {
    throw UnimplementedError();
  }

  @override
  Stream<List<Product>> streamItems(String collection) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateItem(String collection, String doc, Product product) {
    throw UnimplementedError();
  }
}
