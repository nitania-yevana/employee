import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'add_employee_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DatabaseReference _databaseReference = FirebaseDatabase.instance.reference().child('employees');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee'),
      ),
      body: StreamBuilder(
        stream: _databaseReference.onValue,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData || snapshot.data.snapshot.value == null) {
            return Center(
              child: Text('Tidak ada employee ditemukan.'),
            );
          }
          Map<dynamic, dynamic> employees = snapshot.data.snapshot.value;
          return ListView.builder(
            itemCount: employees.length,
            itemBuilder: (BuildContext context, int index) {
              String name = employees.keys.elementAt(index);
              String position = employees[name]['position'];
              return ListTile(
                title: Text(name),
                subtitle: Text(position),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEmployeeScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
