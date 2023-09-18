import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: true,
      title: 'Assignment',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
        // leading: Icon(Icons.account_circle_sharp),
        actions: [
          Container(
            // margin: EdgeInsets.only(right: 20),
            //child: Icon(Icons.ac_unit),
          ),
        ],
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        thickness: 10,
        radius: Radius.circular(0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20, left: 20, bottom: 15),
                  child: Column(
                    children: [
                      Text(
                        "Wellcome to My Photo Gallery!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search  for Photos....',
                          border: OutlineInputBorder(),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 230,
                    width: 900,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.2,
                      ),
                      children: [
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("This is cat-1 "),
                                    ));
                                  },
                                  child: Image.network(
                                    'https://cdn.pixabay.com/photo/2019/01/07/12/26/cat-3919052_1280.jpg',
                                    width: 100,
                                    height: 60,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Photo 0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("This is cat-2"),
                                    ));
                                  },
                                  child: Image.network(
                                    'https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_1280.jpg',
                                    width: 300,
                                    height: 60,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Photo 1",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("This is cat - 3"),
                                    ));
                                  },
                                  child: Image.network(
                                    'https://cdn.pixabay.com/photo/2017/11/14/13/06/kitty-2948404_1280.jpg',
                                    width: 300,
                                    height: 60,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Photo 2",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("This is cat -4"),
                                    ));
                                  },
                                  child: Image.network(
                                    'https://cdn.pixabay.com/photo/2018/02/21/05/17/cat-3169476_1280.jpg',
                                    width: 300,
                                    height: 60,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Photo 3",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("This is cat -5"),
                                    ));
                                  },
                                  child: Image.network(
                                    'https://cdn.pixabay.com/photo/2014/05/07/06/44/cat-339400_1280.jpg',
                                    width: 300,
                                    height: 60,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Photo 4",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("This is cat -6"),
                                    ));
                                  },
                                  child: Image.network(
                                    'https://cdn.pixabay.com/photo/2020/11/26/11/48/cat-5778777_1280.jpg',
                                    width: 300,
                                    height: 60,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Photo 5",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 220,
                    width: 300,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: ListView(
                        children: [
                          ListTile(
                            title: Text('Photo 1'),
                            subtitle: Text('Description for photo 1'),
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2019/01/07/12/26/cat-3919052_1280.jpg"),
                            ),
                          ),
                          ListTile(
                            title: Text('Photo 2'),
                            subtitle: Text('Description for photo 2'),
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/11/29/01/10/kitten-1866475_1280.jpg"),
                            ),
                          ),
                          ListTile(
                            title: Text('Photo 3'),
                            subtitle: Text('Description for photo 3'),
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2019/01/07/12/26/cat-3919052_1280.jpg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Photos Uploaded Successfully"),
                        ));
                      },
                      child: Icon(Icons.upload, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
