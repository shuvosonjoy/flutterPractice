import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Ostad app',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("My shopping List"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 80,
        elevation: 80,


        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){},)
        ],


      ),
      body: Container(
        margin: EdgeInsets.only(left: 15,top: 15),
        child: ListView(
          children: [
            ListTile(
              title: Text('Apples'),
              leading: Icon(Icons.shopping_basket),
            ),
            ListTile(
              title: Text('Bananas'),
              leading: Icon(Icons.shopping_basket),
            ),
            ListTile(
              title: Text('Bread'),
              leading: Icon(Icons.shopping_basket),
            ),
            ListTile(
              title: Text('Milk'),
              leading: Icon(Icons.shopping_basket),
            ),
            ListTile(
              title: Text('Eggs'),
              leading: Icon(Icons.shopping_basket),
            ),

          ],
        ),
      ),
    );
  }
}