import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Gun:', 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman'
                )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  color: Colors.red,
                  child:Text('AK117', 
                  style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Colors.white,
                )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Type:', 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman'
                )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  color: Colors.blue,
                  child:Text('Assault Rifle', 
                  style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Colors.white,
                )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 60, 70, 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Skin:', 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman'
                )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  color: Colors.green,
                  child:Text('Mythic', 
                  style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Colors.white,
                )),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}

