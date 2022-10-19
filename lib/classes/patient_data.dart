import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientData {
  String data;
  IconData icon;
  Color color;
  PatientData({required this.data, required this.icon, required this.color});
}

List<PatientData> patientDataList = [
  PatientData(data: '1111', icon: Icons.alarm, color: Colors.grey[500]!),
  PatientData(data: '123456789', icon: Icons.phone, color: Colors.blue),
  PatientData(
      data: '48B train street builing 51,appartment   02 brasov',
      icon: Icons.location_on,
      color: Colors.grey[500]!),
  PatientData(
      data:
          'Medical tests are performed to verify the state of helth xxxxxxxxxxxxxxxxxxxxxxxxxxx ',
      icon: Icons.alarm,
      color: Colors.blue),
];
