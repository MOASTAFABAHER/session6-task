import 'package:application11/classes/setting_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/setting_container.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_applications,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Stack(
              children: const [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                Positioned(
                  bottom: 10,
                  left: 80,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 14,
                    child: Icon(Icons.arrow_downward),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Nicolas Adams',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Mostafa@Baher.com',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Upgrade to Pro',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (contex, index) {
                          return SettingContainer(
                              settingData: settingDataList[index]);
                        },
                        separatorBuilder: (contex, index) {
                          return const SizedBox(
                            height: 15,
                          );
                        },
                        itemCount: settingDataList.length),
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
