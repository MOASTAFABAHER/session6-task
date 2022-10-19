import 'package:application11/components/alarm_card.dart';
import 'package:application11/screens/appointments_screen.dart';
import 'package:application11/screens/home_screen.dart';
import 'package:application11/screens/my-account_screen.dart';
import 'package:application11/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/patient_account_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AppointmentScreen(),
      home: MyAccountScreen(),
      // home: PatientAccountScreen(),
      // home: SettingScreen(),
      // home: HomeScreen(),
      //8er el screens baa 3shan tshof el ba2y
    );
  }
}
