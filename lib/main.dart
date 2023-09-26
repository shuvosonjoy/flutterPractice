import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mod7_Assignment',
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product('Product 1', 10.0),
    Product('Product 2', 20.0),
    Product('Product 3', 30.0),
    Product('Product 4', 10.0),
    Product('Product 5', 50.0),
  ];

  List<String> cartCategories = [];

  void _addToCart(int index) {
    setState(() {
      products[index].CartQuantity++;


       if (!cartCategories.contains(products[index].ProductName)) {
        cartCategories.add(products[index].ProductName);
      }
      if (products[index].CartQuantity == 5) {
        _CongratulationsDialog(products[index]);
      }
    });
  }

  void _CongratulationsDialog(Product product) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Congratulations!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text('You\'ve bought 5 ${product.ProductName}!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(cartCategories: cartCategories),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
      appBar: AppBar(
        title: Center(child: Text('Product List')),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].ProductName),
            subtitle: Text(
                'Price: \$${products[index].ProductPrice.toStringAsFixed(2)}'),
            trailing: Column(
              children: [
                Text('Counters: ${products[index].CartQuantity}'),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                    ),
                    onPressed: () {
                      _addToCart(index);
                    },
                    child: Text("Buy Now"))
              ],
            ),
          );
        },
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<String> cartCategories;

  CartPage({required this.cartCategories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(

            child:Text('Cart   ')),
      ),
      body: Center(
        child: Text('Total Products: ${cartCategories.length}'),
      ),
    );
  }
}

class Product {
  final String ProductName;
  final double ProductPrice;
  int CartQuantity = 0;

  Product(this.ProductName, this.ProductPrice);
}
