import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatefulWidget {
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  List<item_list> items = [
    item_list(1, false),
    item_list(2, false),
    item_list(3, false),
    item_list(4, false),
    item_list(5, false),
  ];

  int selectedCount = 0;

  void updateSelectedCount() {
    int count = 0;
    for (var counts in items) {
      if (counts.isSelected) {
        count++;
      }
    }
    setState(() {
      selectedCount = count;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: items.length,

          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ${items[index].id}'),
              tileColor: items[index].isSelected ? Colors.blue : Colors.white,
              onTap: () {
                setState(() {
                  items[index].isSelected = !items[index].isSelected;
                  updateSelectedCount();
                });
              },
            );
          },
          // separatorBuilder: (context, index) {
          //   return Divider();
          // },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Selected Items'),
                content: Text('Number of selected items: $selectedCount'),
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
        },
        child: Icon(Icons.check),
      ),
    );
  }
}

class item_list {
  final int id;
  bool isSelected;

  item_list(this.id, this.isSelected);
}
