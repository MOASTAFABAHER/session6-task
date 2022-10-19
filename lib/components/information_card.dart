import 'package:application11/classes/data_my_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InformationCard extends StatelessWidget {
  final DataMyAccount dataMyAccount;
  InformationCard({required this.dataMyAccount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            Icon(dataMyAccount.icon),
            const SizedBox(
              width: 10,
            ),
            Text(
              dataMyAccount.data,
              style: TextStyle(
                color: dataMyAccount.color,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
