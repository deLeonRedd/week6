import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week6/model/item.dart';
import 'package:week6/provider/shoppingcart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> products = context.watch<ShoppingCart>().cart;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: products.isEmpty ? const Text("No Products Yet")
              :
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.star),
                    title: Text(products[index].name),
                    trailing: TextButton(
                      onPressed: () {
                        context.read<ShoppingCart>().removeItem(products[index]);
                      }, 
                      child: const Text("Remove")
                    ),
                  );
                }
              )
            )
          ],
        ),
      ),
    );
  }
}