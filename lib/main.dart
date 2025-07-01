import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:my_test1/pages/dashboard.dart';
import 'package:my_test1/pages/listItems.dart';
import 'package:my_test1/pages/newGun.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => listItems(),
      '/add' : (context) => NewGun(),
    },
  ));
}

