import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedButtonIndex = -1;

  void changeButtonColor(int buttonIndex) {
    setState(() {
      selectedButtonIndex = buttonIndex;
    });

    final selectedSize = getSizeFromIndex(buttonIndex);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Selected Size: $selectedSize"),
      ),
    );
  }

  String getSizeFromIndex(int index) {
    switch (index) {
      case 0:
        return "S";
      case 1:
        return "M";
      case 2:
        return "L";
      case 3:
        return "XL";
      case 4:
        return "XXL";
      case 5:
        return "XXXL";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => changeButtonColor(0),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    selectedButtonIndex == 0 ? Colors.green : Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("S"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => changeButtonColor(1),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    selectedButtonIndex == 1 ? Colors.green : Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("M"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => changeButtonColor(2),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    selectedButtonIndex == 2 ? Colors.green : Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("L"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => changeButtonColor(3),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    selectedButtonIndex == 3 ? Colors.green : Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("XL"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => changeButtonColor(4),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    selectedButtonIndex == 4 ? Colors.green : Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("XXL"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => changeButtonColor(5),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    selectedButtonIndex == 5 ? Colors.green : Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("XXXL"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
