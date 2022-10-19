import 'package:application11/classes/setting_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingContainer extends StatelessWidget {
  final SettingData settingData;

  SettingContainer({required this.settingData});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey[700],
        ),
        child: TextButton(
            onPressed: () {},
            child: Row(children: [
              const SizedBox(
                width: 20,
              ),
              Icon(settingData.icon, color: Colors.grey[200]),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      settingData.data,
                      style: TextStyle(
                        color: Colors.grey[200],
                      ),
                    ),
                    Icon(
                      settingData.icon2,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ])));
  }
}
