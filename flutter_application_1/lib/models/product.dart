enum Category { all, accessories, clothing, home, }

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.price,
    this.assetPackage,
  });

  final Category category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;
  final String? assetPackage;

  // ESTA ES LA LÍNEA QUE TE FALTA SEGURO:
  String get assetName => '$id-0.png';
  String get package => 'shrine_images';

  @override
  String toString() => '$name (id=$id)';
}