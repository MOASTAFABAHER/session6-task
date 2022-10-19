import 'package:application11/classes/home_contaienr_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/container_item_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://images.pexels.com/photos/7130545/pexels-photo-7130545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/handsome-tall-arabian-beard-man-model-stripped-shirt-posed-outdoor-against-lake-sky-fashionable-arab-guy_627829-2457.jpg?w=900&t=st=1666055620~exp=1666056220~hmac=1c9c6f00bf37a0f3f859cff6031a19aa632206d29e240be8375ebece7d292b10',
                ),
              ),
              const Text(
                'Mary smith',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.sms,
                    color: Colors.white,
                  ),
                  Text(
                    'sms-02123555',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ContainerItemHome(
                              homeContainerData: homeContaienrDataList[index]);
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                        itemCount: homeContaienrDataList.length)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Actions Required',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blueAccent,
                      child: Text(
                        '118',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey[200],
                        child: const Icon(
                          Icons.alarm,
                          size: 22,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: Text(
                                  'Verify Art Profile ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Text(
                                '1-hr',
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Now art profile required your verification  ',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[800]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Galary',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[800],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 155,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://images.pexels.com/photos/248747/pexels-photo-248747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                              width: double.infinity,
                            ),
                          ),
                          const Text(
                            'Sluching towards',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'oil, spary point ',
                            style: TextStyle(
                                fontSize: 10, color: Colors.grey[800]),
                          ),
                          Container(
                            height: 30,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 155,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://images.pexels.com/photos/761815/pexels-photo-761815.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                              width: double.infinity,
                            ),
                          ),
                          const Text(
                            'Kings Grain',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'oil, spary point ',
                            style: TextStyle(
                                fontSize: 10, color: Colors.grey[800]),
                          ),
                          Container(
                            height: 30,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
