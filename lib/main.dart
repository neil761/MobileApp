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
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        title: Text('Arsenal',
                 style: TextStyle(
                  color: Colors.white,
                 ),),
        backgroundColor: const Color.fromARGB(255, 75, 83, 32),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 52, 52, 52),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Guns - Selected
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Guns',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Operators',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color:  Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_rounded, size: 100, color: Colors.white,)
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10, left: 20),
              child: Column(
                children: [
                 Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 80,
                            color: Colors.black,
                          ),
                          Text(
                            'AK47',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.fromLTRB(50, 10, 10, 10),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                           size: 80,
                            color: Colors.black
                          ),
                          Text(
                            'AK117',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                 ),
                 Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 80,
                            color: Colors.black,
                          ),
                          Text(
                            'EM-2',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.fromLTRB(50, 10, 10, 10),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                           size: 80,
                            color: Colors.black
                          ),
                          Text(
                            'Oden',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                 ),
                 Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 80,
                            color: Colors.black,
                          ),
                          Text(
                            'M16',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.fromLTRB(50, 10, 10, 10),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                           size: 80,
                            color: Colors.black
                          ),
                          Text(
                            'Man-O-War',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                 ),
                 Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 80,
                            color: Colors.black,
                          ),
                          Text(
                            'Grau',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.fromLTRB(50, 10, 10, 10),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                           size: 80,
                            color: Colors.black
                          ),
                          Text(
                            'M4',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                 ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}