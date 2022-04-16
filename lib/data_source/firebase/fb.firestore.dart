part of '_index.dart';

class FbFirestore {
  FbFirestore._();

  static final instance = FirebaseFirestore.instance;

  // stream many items
  static Stream<QuerySnapshot<Map<String, dynamic>>> streamItems(
    String collection,
  ) {
    return instance.collection(collection).snapshots();
  }

  // stream single item
  static Stream<DocumentSnapshot<Map<String, dynamic>>> streamItem(
    String collection,
    String doc,
  ) {
    return instance.collection(collection).doc(doc).snapshots();
  }

  // read many items
  static Future<QuerySnapshot<Map<String, dynamic>>> readItems(
    String collection,
  ) async {
    return Future.value(instance.collection(collection).get()).catchError((e) {
      loggerx(FbFirestore).e('error on create', e);
    });
  }

  // read single item
  static Future<DocumentSnapshot<Map<String, dynamic>>> readItem(
    String collection,
    String doc,
  ) async {
    return Future.value(instance.collection(collection).doc(doc).get()).catchError((e) {
      loggerx(FbFirestore).e('error on create', e);
    });
  }

  // create single item (update if exist)
  static Future<void> createItem(
    String collection,
    String doc,
    Map<String, dynamic> data,
  ) async {
    try {
      await instance.collection(collection).doc(doc).set(data);
    } catch (e) {
      loggerx(FbFirestore).e('error on create', e);
    }
  }

  // update single item (error if not exist)
  static Future<void> updateItem(
    String collection,
    String doc,
    Map<String, dynamic> data,
  ) async {
    try {
      await instance.collection(collection).doc(doc).update(data);
    } catch (e) {
      loggerx(FbFirestore).e('error on update', e);
    }
  }

  // delete single item
  static Future<void> deleteItem(
    String collection,
    String doc,
  ) async {
    try {
      await instance.collection(collection).doc(doc).delete();
    } catch (e) {
      loggerx(FbFirestore).e('error on delete', e);
    }
  }
}
