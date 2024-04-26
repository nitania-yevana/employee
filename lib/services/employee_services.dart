import 'package:firebase_database/firebase_database.dart';

class EmployeeServices {
  final DatabaseReference _databaseReference = FirebaseDatabase.instance.reference().child('employees');

  Future<void> addEmployee(String name, String position) async {
    await _databaseReference.child(name).set({
      'position': position,
    });
  }

  Future<List<Map<String, dynamic>>> getEmployees() async {
    DataSnapshot dataSnapshot = await _databaseReference.once();
    List<Map<String, dynamic>> employees = [];
    if (dataSnapshot.value != null) {
      dataSnapshot.value.forEach((key, value) {
        Map<String, dynamic> employee = {
          'name': key,
          'position': value['position'],
        };
        employees.add(employee);
      });
    }
    return employees;
  }
}
