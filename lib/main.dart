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

/// state
class _CounterState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  counter = counter + 1;
                  setState(() {});

                },

                    child: Text('+')),
               SizedBox(width: 10,),

                ElevatedButton(onPressed: () {
                  counter = counter - 1;
                  setState(() {});

                },
                    child: Text('-')),

              ],
            )
          ],
        ),
      ),


    );
  }
}



