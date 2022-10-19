import 'package:application11/classes/patient_data.dart';
import 'package:application11/components/container-textbutton.dart';
import 'package:application11/components/information_card.dart';
import 'package:application11/components/patient_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PatientAccountScreen extends StatelessWidget {
  const PatientAccountScreen({super.key});

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
        title: Text('Patient Account '),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/avtarimg.png'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Mostafa Ahmed Baher',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Medical History',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (contex, index) {
                    return PatientCard(patientData: patientDataList[index]);
                  },
                  itemCount: patientDataList.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 6,
                    );
                  },
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  ContainerTextButton(
                    buttonName: 'Start procedures',
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  ContainerTextButton(
                    buttonName: 'Edit',
                    color: Colors.grey[800]!,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  ContainerTextButton(
                    buttonName: 'Back',
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  ContainerTextButton(
                    buttonName: 'PATIENT MISSING ',
                    color: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
