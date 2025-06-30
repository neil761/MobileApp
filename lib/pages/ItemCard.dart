import 'package:flutter/material.dart';

import 'guns.dart';

class Itemcard extends StatelessWidget {
  final Guns guns;
  const Itemcard({super.key,
  required this.guns});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(7),
            width: 300,
            alignment: Alignment.center,
            child: Text(guns.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text('Damage:' + guns.damage.toString()),
                ),
                Container(
                  child: Text('Fire Rate:' + guns.fireRate.toString()),
                )
              ],
            ),
            // 
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text('Control:' + guns.damage.toString()),
                ),
                Container(
                  child: Text('Mobility:' + guns.fireRate.toString()),
                )
              ],
            ),
            // 
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
            child: ElevatedButton(
              onPressed: (){}
            , child: Text(
              'View Full Details',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            ),
          )
        ],
      ),
    );
  }
}

                
                
                
                
                