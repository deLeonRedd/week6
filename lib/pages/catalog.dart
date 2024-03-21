import 'package:flutter/material.dart';
import 'package:week6/model/item.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {

  List<Item> products = [
    Item("Shampoo", 12.4, 862),
    Item("Soap", 32.2, 789),
    Item("Toothpaste", 5.7, 287),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catalog')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.shop), 
                    title: Text(products[index].name),
                    trailing: TextButton(
                      onPressed: () {
                        print("TODO ADD PRODUCT TO CART");
                      }, 
                      child: const Text("Add"),

                    ),
                  );
                },
                itemCount: products.length,
              ),
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart),
        onPressed: () {
          Navigator.pushNamed(context, "/cart");
        }
      ),
    );
  }
}


