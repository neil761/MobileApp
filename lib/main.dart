import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Profile()
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arsenal',
                 style: TextStyle(
                  color: Colors.white,
                 ),),
        backgroundColor: const Color.fromARGB(255, 75, 83, 32),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('User Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_rounded, size: 100,)
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                  child: Row(
                  children: [
                    Container(
                      child: Text('Name:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                  ],
                ),
                ),
                Container(
                  child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text('Neil Andrew T. Alvarez:'),
                    ),
                  ],
                ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Row(
                  children: [
                    Container(
                      child: Text('Email:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                  ],
                ),
                ),
                Container(
                  child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text('neilandrew03@gmail.com'),
                    ),
                  ],
                ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Row(
                  children: [
                    Container(
                      child: Text('Company:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                  ],
                ),
                ),
                Container(
                  child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text('Batangas State University TNEU Balayan'),
                    ),
                  ],
                ),
                ),
                Container(
                  child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: Text('Contact Number:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                  ],
                ),
                ),
                Container(
                  child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text('09876543212'),
                    ),
                  ],
                ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
                        width: 300,
                       child: ElevatedButton(onPressed: (){},
                 child: Text('Logout',
                 style: TextStyle(
                  color: Colors.white,
                 ),),
                 style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 75, 83, 32)),
                )
                        
                      )
                    ]
                  )

                 
                 )
              ],
            )
          ],
        ),
      ),
    );
  }
}