part of '_index.dart';

class Productx {
  final List<Product> products;
  final AsyncValue<Product> productFuture;
  final Product? productStream;
  Productx({
    this.products = const [],
    required this.productFuture,
    this.productStream,
  });

  Productx copyWith({
    List<Product>? products,
    AsyncValue<Product>? productFuture,
    Product? productStream,
  }) {
    return Productx(
      products: products ?? this.products,
      productFuture: productFuture ?? this.productFuture,
      productStream: productStream ?? this.productStream,
    );
  }

  @override
  @override
  String toString() => 'Productx(products: $products, productFuture: $productFuture, productStream: $productStream)';
}
