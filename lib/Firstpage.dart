// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class First extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 8, 64),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
            child: Image.network(
                "https://png.pngtree.com/png-vector/20220127/ourmid/pngtree-a-group-of-farmers-farming-growing-vegetables-growing-rice-raising-animals-png-image_4368830.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Welcome to \n Molo Article',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: Text(
              'Motivation can take you far,but you can \n  take you even farther if you first find \n                    your vision.',
              style: TextStyle(color: Colors.white),
            ),
          ),
          // ignore: deprecated_member_use
          Padding(
            padding: const EdgeInsets.only(top: 45.0),
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ));
              },
              child: Text("first"),
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              'Application version 10.2.0',
              style: TextStyle(color: Color.fromARGB(255, 144, 142, 142)),
            ),
          )
        ],
      ),
    );
  }
}
