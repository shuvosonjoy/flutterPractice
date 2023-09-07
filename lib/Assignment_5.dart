import 'package:flutter/material.dart';


void main() {
  runApp(
      myApp()
  );
}


class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Hello app',
    );
  }
}



class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return  Scaffold(

      backgroundColor: Colors.blueGrey,
      appBar: AppBar(

        backgroundColor: Colors.deepOrangeAccent,
        //Or CenterTitle: true,
        //title: Text("home")
        title:
        Center(
          child:Text("Home"),

        ),
        leading: Icon(Icons.home,color: Colors.tealAccent,),

      ),
      body:

      Column(
        children: [
          Text("hello world",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),),Text("Homepage"),
          Icon(Icons.access_time_filled),
        ],


      ),
    );
  }
}