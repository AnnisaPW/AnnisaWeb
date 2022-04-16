part of '_index.dart';

class Product {
  final String id;
  final String name;
  final int total;
  final List<String> imageRefs;
  Product({
    this.id = '',
    this.name = 'abc',
    this.total = 0,
    this.imageRefs = const [],
  });

  Product copyWith({
    String? id,
    String? name,
    int? total,
    List<String>? imageRefs,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      total: total ?? this.total,
      imageRefs: imageRefs ?? this.imageRefs,
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, total: $total, imageRefs: $imageRefs)';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'total': total,
      'image_refs': imageRefs,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      total: map['total']?.toInt() ?? 0,
      imageRefs: List<String>.from(map['image_refs'] ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));
}
