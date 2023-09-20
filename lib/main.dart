import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C6020),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "COFFEE SHOP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('images/coffee-bag.png'),
            ),
            Text(
              "Drink Coffee Everyday",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Coffee makes a day perfect, Someone prefer coffee , someone prefer Tea and someone prefer prefer both",
              style: TextStyle(color: Colors.white54, fontSize: 15),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                  color: Colors.green,
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Next page"),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
