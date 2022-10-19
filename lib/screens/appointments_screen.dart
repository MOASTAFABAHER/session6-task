import 'package:application11/classes/person.dart';
import 'package:application11/components/alarm_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(7),
          child: Image.network(
            'https://img.freepik.com/free-vector/abstract-logo-flame-shape_1043-44.jpg?w=740&t=st=1666032408~exp=1666033008~hmac=e6d5727a78cf83dffb10557cc31846dcec23fa11e0d78fd18348047e60fc0343',
          ),
        ),
        title: Text('Appointments'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Wednesday, 22 May 2019',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return AlarmCard(person: alarmPerosn[index]);
                      },
                      itemCount: alarmPerosn.length),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
