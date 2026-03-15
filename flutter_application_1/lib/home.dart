import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; 
import 'models/product.dart';
import 'models/products_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // CARGAMOS LOS PRODUCTOS
    List<Product> products = ProductsRepository.loadProducts(Category.all);
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        locale: Localizations.localeOf(context).toString());

    // REGRESAMOS SOLO LA REJILLA
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 8.0 / 9.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0.0,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18 / 11,
                child: Image.asset(
                  'assets/images/diamond.png', // Tu imagen segura
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.titleLarge,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      formatter.format(product.price),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}