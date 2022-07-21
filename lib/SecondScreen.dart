// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class Item {
  final String image;
  String? text;
  Item(this.image, this.text);
}

List<Item> _items = [
  Item(
      "https://images.pexels.com/photos/1772973/pexels-photo-1772973.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "PHOTO1 \n hi"),
  Item(
      "https://images.pexels.com/photos/1772973/pexels-photo-1772973.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "PHOTO1 \n hello"),
  Item(
      "https://images.pexels.com/photos/1772973/pexels-photo-1772973.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "PHOTO1"),
  Item(
      "https://images.pexels.com/photos/1772973/pexels-photo-1772973.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "PHOTO1")
];

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 6, 50),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FabCircularMenu(
          alignment: Alignment.bottomRight,
          ringColor: Colors.transparent,
          ringDiameter: 450.0,
          ringWidth: 150.0,
          
          fabSize: 30.0,
          fabElevation: 12.0,
          fabIconBorder: CircleBorder(),
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                displayMessage(context, 'Home Clicked');
              },
              elevation: 5.0,
              fillColor: Colors.green,
              child: Icon(
                Icons.home,
                size: 20.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
            RawMaterialButton(
              onPressed: () {
                displayMessage(context, 'Search Clicked');
              },
              elevation: 10.0,
              fillColor: Colors.orange,
              child: Icon(
                Icons.search,
                size: 20.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.purple,
              child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    size: 20,
                  ),
                  onPressed: () {
                    displayMessage(context, 'Setting Clicked');
                  }),
            ),
            IconButton(
                icon: Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 243, 242, 242),
                  size: 40,
                ),
                onPressed: () {
                  displayMessage(context, 'Favorite Clicked');
                }),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 320,
            width: 1700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20.0),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu),
                      Padding(
                        padding: const EdgeInsets.only(left: 200.0),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.surround_sound),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        Text(
                          '   Popular',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Text('wed,  july 20,2022'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,

                    // color: Colors.white,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 10),
                          child: Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 252, 251, 251),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 135.0, left: 20),
                                  child: Text(_items[index].text.toString()),
                                ),
                              ),
                              Container(
                                  width: 180,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      // color: Colors.red,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            NetworkImage(_items[index].image),
                                      ))),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 45, 10, 0),
            child: Text(
              'Recent  Articles',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/previews/005/015/971/non_2x/lock-flat-icon-illustration-security-lock-private-password-privacy-secure-locked-safe-padlock-protection-flat-icons-vector.jpg'),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' • UI UX Design',
                        style:
                            TextStyle(color: Color.fromARGB(255, 192, 117, 4)),
                      ),
                      SizedBox(
                          //width: 10,
                          //height: 20,
                          ),
                      Text(
                        'Dealing with customer \nobjectives',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'by Saepul .10 min ago',
                        style: TextStyle(
                            color: Color.fromARGB(255, 141, 138, 138)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://t4.ftcdn.net/jpg/01/35/38/75/360_F_135387578_vKyGn4NM9E2ipUS9j1GRCDLs40CwRNyC.jpg')),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' • Motivation',
                        style: TextStyle(color: Colors.blue),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('2020 Make Partner \nrelationshion with the ',
                          style: TextStyle(color: Colors.white)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('by Sri 30 min ago',
                          style: TextStyle(
                              color: Color.fromARGB(255, 126, 128, 129)))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void displayMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
    ));
  }
}
