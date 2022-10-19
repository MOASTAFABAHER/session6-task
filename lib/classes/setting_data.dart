import 'package:flutter/material.dart';

class SettingData {
  String data;
  IconData icon;
  IconData? icon2;
  SettingData({required this.data, required this.icon, this.icon2});
}

List<SettingData> settingDataList = [
  SettingData(
      data: 'Privacy', icon: Icons.privacy_tip, icon2: Icons.play_arrow),
  SettingData(
      data: 'Purchase History ', icon: Icons.history, icon2: Icons.play_arrow),
  SettingData(
      data: 'Help & Support', icon: Icons.support, icon2: Icons.play_arrow),
  SettingData(data: 'Settings', icon: Icons.settings, icon2: Icons.play_arrow),
  SettingData(
      data: 'Invite a friend', icon: Icons.add_call, icon2: Icons.play_arrow),
  SettingData(
    data: 'Logout',
    icon: Icons.logout,
  ),
];
