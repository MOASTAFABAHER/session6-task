import 'package:application11/classes/person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlarmCard extends StatelessWidget {
  final Person person;
  const AlarmCard({required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 370,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              person.name!,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.alarm),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  person.alarmTime!,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
