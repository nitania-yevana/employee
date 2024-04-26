import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AddEmployeeScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _positionController = TextEditingController();
  final DatabaseReference _databaseReference = FirebaseDatabase.instance.reference().child('employees');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextField(
              controller: _positionController,
              decoration: InputDecoration(
                labelText: 'Position',
              ),
            ),
            SizedBox(height: 16.0),
            RaisedButton(
              onPressed: () {
                String name = _nameController.text;
                String position = _positionController.text;
                _databaseReference.child(name).set({
                  'position': position,
                });
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
