import 'package:flutter/material.dart';
import 'package:my_test1/pages/ItemCard.dart';
import 'package:my_test1/pages/dashboard.dart';
import 'package:my_test1/pages/guns.dart';



class listItems extends StatefulWidget {
  const listItems({super.key});

  @override
  State<listItems> createState() => _listItemsState();
}

class _listItemsState extends State<listItems> {

  List<Guns> guns = [
    Guns(
      name: "AK47",
      damage: 33, 
      fireRate: 54, 
      control: 60, 
      mobility: 56),
    Guns(
      name: "Fennec",
      damage: 23, 
      fireRate: 111,
      control: 40, 
      mobility: 70),
    Guns(
      name: "Holger",
      damage: 31, 
      fireRate: 75, 
      control: 60, 
      mobility: 46),
    Guns(
      name: "DLQ",
      damage: 90, 
      fireRate: 28, 
      control: 50, 
      mobility: 56),
    Guns(
      name: "KRM",
      damage: 98, 
      fireRate: 28, 
      control: 36, 
      mobility: 72)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 75, 83, 32),
        title: Text('Arsenal',
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(40, 10, 0, 50),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'CODM ARSENAL',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: guns.map((gun){
                  return Itemcard(guns: gun);
                }).toList(),
                  )
                ],
                
              ),
            ),
            ),
        
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(Icons.add),
        ),
    );
  }
}