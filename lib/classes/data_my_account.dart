import 'package:application11/components/information_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataMyAccount {
  String data;
  IconData icon;
  Color color;
  DataMyAccount({required this.data, required this.icon,required this.color});
}
List<DataMyAccount> myAccountDataList=[
  DataMyAccount(data: '12345678910', icon: Icons.phone, color: Colors.grey[800]!),
  DataMyAccount(data: 'Mostafa@Baher.com', icon: Icons.mail, color: Colors.grey[800]!),
  DataMyAccount(data: 'Addres', icon: Icons.location_on, color: Colors.grey[800]!),
];
