import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week6/model/item.dart';
import 'package:week6/provider/shoppingcart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> products = context.read<ShoppingCart>().cart;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2, //TODO: Replace with actual counter
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.star),
                    title: Text("Test $index"),
                    trailing: TextButton(
                      onPressed: () {
                        print("TODO REMOVE ITEM");
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