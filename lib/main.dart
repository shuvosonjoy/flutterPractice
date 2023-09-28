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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                   // margin: EdgeInsets.only(left: 10, top: 10),

                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images.pexels.com/photos/1203803/pexels-photo-1203803.jpeg?auto=compress&cs=tinysrgb&w=600',
                          ),
                          fit: BoxFit.cover,
                        )),
                    //  child: Image.network('https://images.pexels.com/photos/1203803/pexels-photo-1203803.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('John Doe'),
                        Wrap(
                          children: [
                            Text(
                                'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),

                          ],
                        ),
                        SizedBox(
                          height: 300,
                          child: Container(
                            child: GridView(
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 1.2,
                                ),
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  width: 100,
                                  child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),

                              ],

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, ),

                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images.pexels.com/photos/1203803/pexels-photo-1203803.jpeg?auto=compress&cs=tinysrgb&w=600',
                          ),
                          fit: BoxFit.cover,
                        )),
                    //  child: Image.network('https://images.pexels.com/photos/1203803/pexels-photo-1203803.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  SizedBox(
                    width: 550,
                    child: Container(
                      child: Column(
                        children: [
                          Text('John Doe'),
                          Wrap(
                            children: [
                              Text(
                                  'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),

                            ],
                          ),
                          SizedBox(

                            height: 300,
                            width: 900,
                            child: Container(
                              child: GridView(

                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 1.2,
                                ),
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 250,
                                    width: 250,
                                    child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 250,
                                    width: 250,
                                    child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 250,
                                    width: 250,
                                    child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 250,
                                    width: 250,
                                    child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 250,
                                    width: 250,
                                    child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 250,
                                    width: 250,
                                    child:  Image.network('https://images.pexels.com/photos/1205022/pexels-photo-1205022.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                  ),

                                ],

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        }),
      ),
    );
  }
}
