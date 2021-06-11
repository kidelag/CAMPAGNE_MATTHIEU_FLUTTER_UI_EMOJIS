import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
            height: 150,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.blue[100],
                        boxShadow: [
                          BoxShadow (
                            color: Colors.black38,
                            offset: Offset(0, 3),
                            blurRadius: 10,
                          ),
                        ]
                    ),
                    child: ClipOval(
                      child: Image.asset('assets/tuxedo.png',
                        scale: 2.5,
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
            child: ListView(
            children: [
              Container(
                //margin: const EdgeInsets.only(right: 200.0),
                child: Text('Search for recipes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[200],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey[500],
                  ),
                  title: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),

              Text("Recommended",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              Container(
                height: 225,
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.orange[300].withOpacity(0.3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              ),
                              child: Image.asset('assets/burger.png'),
                            ),
                            Text("Hamburger\n \$21",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),

                      Container(
                        padding: EdgeInsets.all(10),
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.blue[500].withOpacity(0.3),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset('assets/fries.png'),
                              ),
                              Text("Chips\n \$15",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 20,
                                ),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(width: 15),

                      Container(
                        padding: EdgeInsets.all(10),
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.greenAccent[200].withOpacity(0.3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              ),
                              child: Image.asset('assets/pizza.png'),
                            ),
                            Text("Pizza\n \$18",
                              style: TextStyle(
                                color: Colors.green[300],
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                    scrollDirection: Axis.horizontal,
                  ),
              ),

              SizedBox(height: 20),

              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: 1,
                        child: Text("FEATURED",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: 0.2,
                        child: Text("COMBO",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: 0.2,
                        child: Text("FAVORITES",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: 0.2,
                        child: Text("RECOMMENDED",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Column(
                children: [
                  ListTile(
                    dense: false,
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset('assets/hotdog.png',
                        scale: 2,
                      ),
                    ),
                    title: Text("Delicious hot dog"),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ]
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("\$6 ",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 18,
                                ),
                              ),

                              Text(" \$18",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),

                    trailing: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black26,
                              offset: Offset(2, 10),
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Icon(Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  ListTile(
                    dense: false,
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset('assets/cheese.png',
                        scale: 2,
                      ),
                    ),
                    title: Text("Delicious cheese"),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ]
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("\$6 ",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 18,
                                ),
                              ),

                              Text(" \$18",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),

                    trailing: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black26,
                              offset: Offset(2, 10),
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Icon(Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  ListTile(
                    dense: false,
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset('assets/doughnut.png',
                        scale: 2,
                      ),
                    ),
                    title: Text("Delicious doughnut"),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ]
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("\$6 ",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 18,
                                ),
                              ),

                              Text(" \$18",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),

                    trailing: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black26,
                              offset: Offset(2, 10),
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Icon(Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  ListTile(
                    dense: false,
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset('assets/popcorn.png',
                        scale: 2,
                      ),
                    ),
                    title: Text("Delicious popcorn"),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ]
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("\$6 ",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 18,
                                ),
                              ),

                              Text(" \$18",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),

                    trailing: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black26,
                              offset: Offset(2, 10),
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Icon(Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  ListTile(
                    dense: false,
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset('assets/sandwich.png',
                        scale: 2,
                      ),
                    ),
                    title: Text("Delicious sandwich"),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ]
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("\$6 ",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 18,
                                ),
                              ),

                              Text(" \$18",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),

                    trailing: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black26,
                              offset: Offset(2, 10),
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Icon(Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  ListTile(
                    dense: false,
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset('assets/taco.png',
                        scale: 2,
                      ),
                    ),
                    title: Text("Delicious taco"),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ]
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("\$6 ",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 18,
                                ),
                              ),

                              Text(" \$18",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),

                    trailing: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black26,
                              offset: Offset(2, 10),
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Icon(Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// Container(
// child: ListView(
// padding: const EdgeInsets.all(8),
// children: <Widget>[
// Container(
// height: 50,
// color: Colors.amber[600],
// child: const Center(child: Text('Entry A')),
// ),
// Container(
// height: 50,
// color: Colors.amber[500],
// child: const Center(child: Text('Entry B')),
// ),
// Container(
// height: 50,
// color: Colors.amber[100],
// child: const Center(child: Text('Entry C')),
// ),
// ],
// scrollDirection: Axis.horizontal,
// )
// ),