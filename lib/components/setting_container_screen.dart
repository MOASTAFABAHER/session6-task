import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingContainer extends StatelessWidget {
  String data;
  IconData icon;
  IconData? icon2;

  SettingContainer({required this.data, required this.icon, this.icon2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[700],
      ),
      child: Expanded(
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Icon(icon, color: Colors.grey[200]),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      data,
                      style: TextStyle(
                        color: Colors.grey[200],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      icon2,
                      color: Colors.grey[200],
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
