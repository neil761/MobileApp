import 'package:flutter/material.dart';
import 'package:my_test1/World_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

List<WorldTime> locations = [
  WorldTime(location: 'London', url: 'Europe/London'),
  WorldTime(location: 'Athens', url: 'Europe/Berlin'),
  WorldTime(location: 'Cairo', url: 'Africa/Cairo'),
  WorldTime(location: 'Nairobi', url: 'Africa/Nairobi'),
  WorldTime(location: 'Chicago', url: 'America/Chicago'),
  WorldTime(location: 'Seoul', url: 'Asia/Seoul'),
  WorldTime(location: 'Jakarta', url: 'Asia/Jakarta'),
];

  void updateTime(index) async{
    WorldTime instance = locations[index];
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 20),
              Text('Loading time for ${instance.location}...'),
            ],
          ),
        );
      },
    );
    await instance.getTime();

    Navigator.pop(context);

    //navigate to homescreen
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'isDaytime' : instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Choose Location',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
            child: ListTile(
              onTap: () {
                updateTime(index);
              },
              title: Text(locations[index].location),
              leading: CircleAvatar(
                child: Icon(Icons.flag),
              ),
            ),
          ),
          );
        },
      ),
    );
  }
}