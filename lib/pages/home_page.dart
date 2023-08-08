import 'package:betting1/pages/table_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../res/styles.dart';
import '../widgets/chose_league_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: red,
          centerTitle: true,
          title: Text(
            'League'.toUpperCase(),
            style: h20w900It,
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'images/bg.png',
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () => Get.offAll(TablePage()),
              child: ChoseLeagueContainer(),
            ),
          ],
        ));
  }
}
