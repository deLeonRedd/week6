import 'package:flutter/material.dart';

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