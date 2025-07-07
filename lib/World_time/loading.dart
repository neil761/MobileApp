import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();
    getTime();
  }

  void getTime() async{
    
    Response response = await http.get(Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=Asia%2FManila'));
    Map data = jsonDecode(response.body);
    //print(data);

    String datetime = data['dateTime'];

    // print(datetime); 

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'loading screen'
      ),
    );
  }
}