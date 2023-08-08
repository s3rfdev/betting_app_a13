import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

import '../pages/matches_page.dart';
import '../pages/metrics_page.dart';
import '../pages/survey_page.dart';
import '../pages/table_page.dart';
import '../res/styles.dart';
import 'header.dart';

enum TabTitle {
  Table,
  Metrics,
  Matches,
  Survey,
}

class MainBody extends StatelessWidget {
  MainBody({
    super.key,
    required this.child,
    required this.tab,
    this.name = '',
    this.showBack = true,
  });
  Widget child;
  TabTitle tab;
  String name;
  bool showBack;
  @override
  Widget build(BuildContext context) {
    print(tab.index);
    return Scaffold(
      backgroundColor: blueGrey,
      appBar: Header(
        shoBack: showBack,
        title: name != '' ? name : tab.name,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 1, color: Colors.white),
            Container(
              height: 50,
              color: red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Get.offAll(TablePage()),
                    child: Text(
                      'Table',
                      style: tab.index == 0 ? h18w900 : h18w400,
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Get.offAll(MetricsPage(id: 1958, name: 'name')),
                    child: Text(
                      'Metrics',
                      style: tab.index == 1 ? h18w900 : h18w400,
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.offAll(MatchesPage()),
                    child: Text(
                      'Matches',
                      style: tab.index == 2 ? h18w900 : h18w400,
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.offAll(SurveyPage()),
                    child: Text(
                      'Survey',
                      style: tab.index == 3 ? h18w900 : h18w400,
                    ),
                  ),
                ],
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
