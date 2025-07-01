import 'package:flutter/material.dart';

class NewGun extends StatefulWidget {
  const NewGun({super.key});

  @override
  State<NewGun> createState() => _NewGunState();
}

class _NewGunState extends State<NewGun> {

  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _damage = 0;
  int _fireRate = 0;
  int _control = 0;
  int _mobility = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 75, 83, 32),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('Add a Gun',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),),
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter a Name';
                  }
                },
               ),
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Damage',
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter the Damage';
                  }
                },
               ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Fire Rate',
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter the Fire Rate';
                  }
                },
               ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Control',
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter the Control';
                  }
                },
               ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobility',
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter the Mobility';
                  }
                },
               ),
              ),
              
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FilledButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          print('The form is Validated');
                        }
                      },
                      child: Text(
                        'Add'
                      ),
                      style: FilledButton.styleFrom(backgroundColor: Colors.amber),
                      ),
                  ],
                ),
              )
            ],
          )
          ),
      ),
    );
  }
}