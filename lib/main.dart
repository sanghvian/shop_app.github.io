import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_details_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.grey,
        fontFamily: 'Lato',
      ),
      home: ProductsOverviewScreen(),
      initialRoute: ProductsOverviewScreen.routeName,
      routes: {
        ProductsOverviewScreen.routeName: (ctx) => ProductsOverviewScreen(),
        ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bikayi app')),
      body: Container(
        child: Center(
          child: Text('Shopping app hai yeh waala'),
        ),
      ),
    );
  }
}
