import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week6/model/item.dart';
import 'package:week6/provider/shoppingcart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ShoppingCart>(
              builder: (context, provider, child) {
                return Expanded(
                  child: provider.cart.isEmpty ? const Text("No Products Yet")
                  :
                  ListView.builder(
                    itemCount: provider.cart.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.star),
                        title: Text(provider.cart[index].name),
                        trailing: TextButton(
                          onPressed: () {
                            context.read<ShoppingCart>().removeItem(provider.cart[index]);
                          }, 
                          child: const Text("Remove")
                        ),
                      );
                    }
                  )
                );
              }
            ),

            Divider(),
            TextButton(
              onPressed: () {
                context.read<ShoppingCart>().removeAll();
              }, 
              child: const Text("Remove All"),
            )
          ],
        ),
      ),
    );
  }
}