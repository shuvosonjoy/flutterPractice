import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'mod5&6',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            // height: 100,

            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 4),
            // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.black, width: 2),
              // // borderRadius: BorderRadius.circular(10)
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              // shape: BoxShape.circle
            ),
            child: Text(
              'Hello',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.center,
          ),
          Row(
            children: [
              /*  Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.deepOrange, width: 5),
                    borderRadius: BorderRadius.only(
                        //topLeft: Radius.circular(16),
                        //bottomRight: Radius.circular(50),
                        )),
                child: Image.asset(
                  'Images/picture.png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                margin: EdgeInsets.only(left: 20, top: 20),
              ),*/
              SizedBox(
                width: 20,
              ),
              Text(
                "Image-1",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              ),
            ],
          ),
          Container(
            child: Text(
              "This is text after first raw without row widget",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            margin: EdgeInsets.only(left: 10),
          ),
          Row(children: [
            Container(
              child: Text(
                "This is a text from second row",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 18),
              ),
              margin: EdgeInsets.only(left: 10),
            ),
          ]),
          Text(
            "After second row, no container used. Thats why text started from very left from the leftborder.",
            style: TextStyle(color: Colors.orange, fontSize: 17),
          ),
          RichText(
              text: TextSpan(
            // text: 'richtext-span ',
            children: [
              TextSpan(
                text: 'first ',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                  text: 'second ',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.red,
                  )),
              TextSpan(
                text: 'third ',
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
backgroundColor: Colors.red,
textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
            ),
              onPressed: () {},
              child: Text("button"),
            ),
          ),
        ],
      ),
    );
  }
}
