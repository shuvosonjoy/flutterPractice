import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Feed',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portraitList();
          } else {
            return landscapeGrid();
          }
        },
      ),
    );
  }
}

class portraitList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemCount = 10;

    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(30),
          child: Image.network('https://images.pexels.com/photos/18395089/pexels-photo-18395089/free-photo-of-boy-in-sweater-posing-on-armchair-with-camera-in-hands.jpeg?auto=compress&cs=tinysrgb&w=600',width: 150,height: 150,),
        );
      },
    );
  }
}

class landscapeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemCount = 10;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Container(

          padding: EdgeInsets.all(30),
          child: Image.network('https://images.pexels.com/photos/18395089/pexels-photo-18395089/free-photo-of-boy-in-sweater-posing-on-armchair-with-camera-in-hands.jpeg?auto=compress&cs=tinysrgb&w=600',width: 150,height: 150,),
        );
      },
    );
  }
}


