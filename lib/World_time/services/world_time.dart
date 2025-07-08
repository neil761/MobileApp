import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location; // location name for the ui
  String url; //location url for api endpoint
  String time = ''; // the time in that location
  bool isDaytime; //true or false if daytime or not

  WorldTime({required this.location, required this.url}) : isDaytime = false;

  Future<void> getTime() async{

    try{
       Response response = await http.get(Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=$url'));
        Map data = jsonDecode(response.body);
        String datetime = data['dateTime'];

        DateTime now = DateTime.parse(datetime);

        isDaytime = now.hour > 6 && now.hour < 18 ? true : false;
        time = DateFormat.jm().format(now);
    }
    catch(e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
    
   
    
  }

}