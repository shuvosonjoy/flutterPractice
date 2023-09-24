import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<CounterScreen> {
  int counter = 0;

  void _showAlertDialog() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" Count : ",style: TextStyle(fontSize: 25),),
            Text(
              counter.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = counter + 1;
                      if (counter >= 5) {
                        _showAlertDialog();
                      }
                    });
                  },
                  child: Text("+",style: TextStyle(fontSize: 20),)
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 0) {
                        counter = counter - 1;
                      }
                    });
                  },
                  child: Text("-",style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}