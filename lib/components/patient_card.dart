import 'package:application11/classes/data_my_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../classes/patient_data.dart';

class PatientCard extends StatelessWidget {
  final PatientData patientData;
  PatientCard({required this.patientData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        width: double.infinity,
        child: Row(
          children: [
            Icon(patientData.icon),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                patientData.data,
                style: TextStyle(
                  color: patientData.color,
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
