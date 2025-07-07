import 'package:flutter/material.dart';
import 'package:my_test1/World_time/choose_location.dart';
import 'package:my_test1/World_time/home.dart';
import 'package:my_test1/World_time/loading.dart';
import 'package:my_test1/pages/dashboard.dart';
import 'package:my_test1/pages/listItems.dart';
import 'package:my_test1/pages/newGun.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/add' : (context) => NewGun(),

      //Worldtime Routes
      '/home' : (context) => Home(), 
      '/location' : (context) => ChooseLocation(),
      '/' : (context) => Loading(),
    },
  ));
}

