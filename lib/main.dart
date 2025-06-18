import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
          child: Column(
              children: [
                Text('Call of', style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.indigo
                ),),
                Text('Duty', style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.lightBlue
                ),),
                Text('Mobile', style: TextStyle(
                    fontFamily: 'Courier New',
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.black87
                ),)
              ]
          )
      )


      )
    )
  );
}

