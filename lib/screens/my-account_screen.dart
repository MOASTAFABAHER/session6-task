import 'package:application11/classes/data_my_account.dart';
import 'package:application11/components/container-textbutton.dart';
import 'package:application11/components/information_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

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
        title: Text('My Account '),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/avtarimg.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Mosatafa Ahmed Baher',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          Text(
            'HCP Name',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InformationCard(
                        dataMyAccount: myAccountDataList[index]);
                  },
                  separatorBuilder: (contex, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: myAccountDataList.length)
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          ContainerTextButton(buttonName: 'Back', color: Colors.blue)
        ],
      ),
    );
  }
}
