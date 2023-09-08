import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}


class myApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: "Module_5",
    );
  }
}


class HomeScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 70,
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: Icon(Icons.add_card_sharp),
        actions: [
          Row(
            children: [

                Icon(Icons.search),



            ],
          ),
        ],


        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is mod 5 Assignment",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My ",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
                Text(
                  "phone ",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
                Text(
                  "name ",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Your phone name ",
                  style: TextStyle(color: Colors.amber, fontSize: 25),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
