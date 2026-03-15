import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product> [
      Product(
        category: Category.accessories,
        id: 0,
        isFeatured: true,
        name: 'Vagabond sack',
        price: 120,
      ),
      Product(
        category: Category.accessories,
        id: 1,
        isFeatured: true,
        name: 'Stella sunglasses',
        price: 58,
      ),
      Product(
        category: Category.accessories,
        id: 2,
        isFeatured: false,
        name: 'Whitney belt',
        price: 35,
      ),
      Product(
        category: Category.accessories,
        id: 3,
        isFeatured: true,
        name: 'Garden strand',
        price: 98,
      ),
      Product(
        category: Category.accessories,
        id: 4,
        isFeatured: false,
        name: 'Strut earrings',
        price: 34,
      ),
      Product(
        category: Category.accessories,
        id: 5,
        isFeatured: false,
        name: 'Varsity socks',
        price: 12,
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((p) => p.category == category).toList();
    }
  }
}