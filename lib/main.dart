import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;

                        if (counter >= 5) _dialogueBox();
                      });
                    },
                    child: Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      if (counter > 0) counter--;
                      setState(() {});
                    },
                    child: Icon(Icons.minimize)),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _dialogueBox() {

    showDialog(
      context: context,
      builder: (BuildContext context) {

        return AlertDialog(
          title: Text('Button Pressed $counter times'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
