import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
      ),
      body: Scrollbar(
        /*child: GridView.builder(
          itemCount: 10, ///how much item needed
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                
                Icon(Icons.account_circle_sharp),
                Text("item no ${index+1}"),
              ],
            );
          },
        ),
        */
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("list tile index: ${index + 1}"),
                subtitle: Text("subtitle....."),
                leading: Icon(Icons.account_balance),
              );
            }),
      ),
    );
  }
}
