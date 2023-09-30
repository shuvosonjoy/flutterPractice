import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return Container(
              margin: EdgeInsets.all(12),
              child: Column(
                children: [
                  _centerImage(),
                  Container(
                      child: Column(children: [
                    _headline(),
                    _contentPage(),
                  ]))
                ],
              ),
            );
          } else {
            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 300,
                      width: 300,
                      margin: EdgeInsets.all(20),
                      child: _centerImage()),
                  Expanded(
                      child: Container(
                          margin: EdgeInsets.only(top: 10, right: 10, left: 0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [_headline(), _contentPage()]))),
                ],
              ),
            );
          }
        }),
      ),
    );
  }
}

Container _centerImage() {
  return Container(
    padding: EdgeInsets.all(15),
    child: CircleAvatar(
      radius: 150,
      backgroundImage: NetworkImage(
        'https://images.pexels.com/photos/1203803/pexels-photo-1203803.jpeg?auto=compress&cs=tinysrgb&w=600',
      ),
    ),
  );
}

Container _headline() {
  return Container(
    child: Text(
      'John Doe',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
  );
}

Container _contentPage() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Wrap(
          children: [
            Text(
              'Lorem ipsum dolor sit amet, consectetur adip iscing elit. Nullam ac tortor euismod, bibendum libero vel, congue odio.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 600,
          width: 900,
          child: Container(
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.5,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network(
                        'https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                  );
                }),
          ),
        ),
      ],
    ),
  );
}
