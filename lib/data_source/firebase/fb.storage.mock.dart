part of '_index.dart';

class FbStorageMock {
  FbStorageMock._();

  static final instance = MockFirebaseStorage();

  // * upload multiple files and rename files
  static Future<List<String>> uploadFilesAndRename(
    String folder,
    List<String> paths,
  ) async {
    final urls = await Future.wait(
      paths.mapIndexed((index, path) {
        final nameExt = extension(path);
        final fileName = '$folder-$index$nameExt';
        final ref = '$folder/$fileName';
        return uploadFile(ref, path);
      }),
    );
    return urls;
  }

  // * upload multiple files
  static Future<List<String>> uploadFiles(
    String folder,
    List<String> paths,
  ) async {
    final urls = await Future.wait(
      paths.map((path) {
        final fileName = basename(path);
        final ref = '$folder/$fileName';
        return uploadFile(ref, path);
      }),
    );
    return urls;
  }

  // * upload single file
  static Future<String> uploadFile(
    String ref,
    String path,
  ) async {
    final task = instance.ref(ref).putFile(File(path));
    await task;
    final snapshot = await task;
    final wording = 'Uploaded ${snapshot.bytesTransferred} bytes.';
    loggerx(FbStorage).i(wording);
    return await getUrl(ref);
  }

  // * delete multiple file
  static Future<void> delete(List<String> refs) async {
    await Future.wait(
      refs.map((ref) => instance.ref(ref).delete()),
    );
    loggerx(FbStorage).i('delete completed');
  }

  // * get url from ref
  static Future<String> getUrl(String ref) async {
    return await instance.ref(ref).getDownloadURL();
  }
}
