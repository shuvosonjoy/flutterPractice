import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}





class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  double totalAmount = 0.0;

  void _updateTotalAmount() {
    double newTotalAmount = 0.0;

    newTotalAmount += 10.0 * _productQuantities[0];
    newTotalAmount += 15.0 * _productQuantities[1];
    newTotalAmount += 10.0 * _productQuantities[2];
    newTotalAmount += 15.0 * _productQuantities[3];

    setState(() {
      totalAmount = newTotalAmount;
    });
  }

  final List<int> _productQuantities = [0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Container(
              margin: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 7, child: Column(
                    children: [
                      Text("My Bag",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                      ),),
                      SizedBox(height: 5,),
                    ],
                  )),
                  Expanded(
                    flex: 78,
                    child: ListView(
                      children: [
                        Card(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2xvdGhpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tshirts',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color: ',
                                            style:
                                            TextStyle(color: Colors.grey,
                                            fontSize: 12,

                                            ),

                                          ),
                                          Text(
                                            "Black",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              fontSize: 12,),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Size: ",
                                            style:
                                            TextStyle(color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            "L",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (_productQuantities[0] > 0) {
                                                  _productQuantities[0]--;
                                                  _updateTotalAmount();
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                          Text(
                                              _productQuantities[0].toString()),

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _productQuantities[0]++;
                                                _updateTotalAmount();
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(height: 8),
                                    Text("10\$",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.pexels.com/photos/54206/pexels-photo-54206.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jacket',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color: ',
                                            style:
                                            TextStyle(color: Colors.grey,
                                              fontSize: 12,),
                                          ),
                                          Text(
                                            "Black",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              fontSize: 12,),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Size: ",
                                            style:
                                            TextStyle(color: Colors.grey,
                                              fontSize: 12,),
                                          ),
                                          Text(
                                            "L",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              fontSize: 12,),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (_productQuantities[1] > 0) {
                                                  _productQuantities[1]--;
                                                  _updateTotalAmount();
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                          Text(
                                              _productQuantities[1].toString()),

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _productQuantities[1]++;
                                                _updateTotalAmount();
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(height: 8),
                                    Text("15\$",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://media.istockphoto.com/id/154960461/photo/red-sweat-shirt-on-white-background.webp?b=1&s=170667a&w=0&k=20&c=cPVGdWY52XQiBFKoCc-eWdjMJXKdzk_iiGGXCTSZo-U='),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hoodie',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color: ',
                                            style:
                                            TextStyle(color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            "Black",
                                            style: TextStyle(   fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Size: ",
                                            style:
                                            TextStyle(   fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "L",
                                            style: TextStyle(   fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (_productQuantities[2] > 0) {
                                                  _productQuantities[2]--;
                                                  _updateTotalAmount();
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                          Text(
                                              _productQuantities[2].toString()),
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _productQuantities[2]++;
                                                _updateTotalAmount();
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(height: 8),
                                    Text("10\$",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.pexels.com/photos/54206/pexels-photo-54206.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jacket',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color: ',
                                            style:
                                            TextStyle(color: Colors.grey,

                                              fontSize: 12,),
                                          ),
                                          Text(
                                            "Black",
                                            style: TextStyle(   fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Size: ",
                                            style:
                                            TextStyle(   fontSize: 12,color: Colors.grey),
                                          ),
                                          Text(
                                            "L",
                                            style: TextStyle(   fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (_productQuantities[3] > 0) {
                                                  _productQuantities[3]--;
                                                  _updateTotalAmount();
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                          Text(
                                              _productQuantities[3].toString()),

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _productQuantities[3]++;
                                                _updateTotalAmount();
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),


                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(height: 8),
                                    Text("10\$",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  flex:80,
                                  child: Text(
                                    'Total amount : ',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 20,
                                  child: Text(
                                    '\$$totalAmount',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      'Congratulations! Your total amount is \$${totalAmount.toStringAsFixed(2)}.'),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.all(15),
                            ),
                            child: Text(
                              'CHECK OUT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
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
              margin: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 15, child: Column(
                    children: [
                      Text("My Bag",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                      ),),
                      SizedBox(height: 5,),
                    ],
                  )),
                  Expanded(
                    flex: 55,
                    child: ListView(
                      children: [
                        Card(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2xvdGhpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tshirt',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color: ',
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "Black",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Size: ",
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "L",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (_productQuantities[0] > 0) {
                                                  _productQuantities[0]--;
                                                  _updateTotalAmount();
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),
                                              // Makes the button circular
                                              padding: EdgeInsets.all(10.0),
                                              // Adjust the padding as needed
                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                          Text(
                                              _productQuantities[0].toString()),

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _productQuantities[0]++;
                                                _updateTotalAmount();
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(height: 8),
                                    Text("10\$"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.pexels.com/photos/54206/pexels-photo-54206.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jacket',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color: ',
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "Black",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Size: ",
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "L",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (_productQuantities[1] > 0) {
                                                  _productQuantities[1]--;
                                                  _updateTotalAmount();
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                          Text(
                                              _productQuantities[1].toString()),

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _productQuantities[1]++;
                                                _updateTotalAmount();
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(height: 8),
                                    Text("15\$"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://media.istockphoto.com/id/154960461/photo/red-sweat-shirt-on-white-background.webp?b=1&s=170667a&w=0&k=20&c=cPVGdWY52XQiBFKoCc-eWdjMJXKdzk_iiGGXCTSZo-U='),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hoodie',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color: ',
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "Black",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Size: ",
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "L",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (_productQuantities[2] > 0) {
                                                  _productQuantities[2]--;
                                                  _updateTotalAmount();
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                          Text(
                                              _productQuantities[2].toString()),
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _productQuantities[2]++;
                                                _updateTotalAmount();
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(height: 8),
                                    Text("10\$"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.pexels.com/photos/54206/pexels-photo-54206.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jacket',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color: ',
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "Black",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Size: ",
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "L",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (_productQuantities[3] > 0) {
                                                  _productQuantities[3]--;
                                                  _updateTotalAmount();
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),
                                          Text(
                                              _productQuantities[3].toString()),

                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _productQuantities[3]++;
                                                _updateTotalAmount();
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),

                                              padding: EdgeInsets.all(10.0),

                                              elevation:
                                              6,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 25.0,
                                              color: Colors
                                                  .grey,
                                            ),
                                          ),


                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(height: 8),
                                    Text("15\$"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  flex:80,
                                  child: Text(
                                    'Total amount : ',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 20,
                                  child: Text(
                                    '\$$totalAmount',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      'Congratulations! Your total amount is \$${totalAmount.toStringAsFixed(2)}.'),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.all(15),
                            ),
                            child: Text(
                              'CHECK OUT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}




