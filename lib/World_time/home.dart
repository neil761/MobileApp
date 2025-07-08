import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isEmpty ? (ModalRoute.of(context)?.settings.arguments as Map? ?? {}) : data;
    print(data);


    //set bg
    String bgImage = data['isDaytime'] == true ? 'day.jpg' : 'night.jpg';
    Color bgColor = data['isDaytime'] == true ? Colors.blue : const Color.fromARGB(255, 6, 36, 81)!;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
              )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
              ElevatedButton.icon(
                onPressed: () async{
                  dynamic result = await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {
                      'time' : result['time'],
                      'location': result['location'],
                      'isDaytime': result['isDaytime'],
                    };
                  });
                }, 
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location'),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 20.0,),
                    Text(
                      data['time'],
                      style: TextStyle(
                        fontSize: 66.0,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 5.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
            ],
            ),
          ),
        )
      ),
    );
  }
}