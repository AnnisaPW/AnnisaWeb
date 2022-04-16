part of '_index.dart';

final pvPruductsSv = StateNotifierProvider<ProductxService, Productx>((ref) => ProductxService(ref));

final pvPruductsRepo = Provider<ProductxRepo>((ref) {
  return ProductxRepo();
});
