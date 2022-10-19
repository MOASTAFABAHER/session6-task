import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class HomeContainerData {
  Color color;
  String number;
  String data;
  HomeContainerData(
      {required this.data, required this.color, required this.number});
}

List<HomeContainerData> homeContaienrDataList = [
  HomeContainerData(data: 'Unclaimed', color: Colors.purpleAccent, number: '2'),
  HomeContainerData(
      data: 'Monthly Earn', color: Colors.pink, number: '\$ 42510'),
];
