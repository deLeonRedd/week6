import 'package:flutter/material.dart';
import 'package:week6/pages/cart.dart';
import 'package:week6/pages/catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == '/'){
          return MaterialPageRoute(builder: (context) => Catalog());
        } else if (settings.name == '/cart'){
          return MaterialPageRoute(builder: (context) => Cart());
        }
      },
    );
  }
}