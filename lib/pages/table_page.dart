import 'package:betting1/pages/team_page.dart';

import '../api/api.dart';
import '../models/standings/standings.dart' as stan;

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

import '../res/styles.dart';
import '../widgets/main_body.dart';
import '../widgets/table/table_header.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  stan.Standings? table;

  @override
  void initState() {
    super.initState();
    () async {
      var tmp = await SofaApi.getStandingsTotal(325, 48982);
      setState(() {
        table = tmp;
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    print(table?.standings?.length);
    return MainBody(
      showBack: false,
      tab: TabTitle.Table,
      child: table != null
          ? Column(
              children: [
                TableHeader(),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      ...table!.standings![0].rows!.map(
                        (e) {
                          // print(e.)
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Get.to(TeamPage(
                                    id: e.team!.id!, name: e.team!.name!));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 25,
                                      child: Image.network(
                                          'https://api.sofascore1.com/api/v1/team/${e.team!.id}/image')),
                                  SizedBox(width: 5),
                                  SizedBox(
                                      width: 130,
                                      child:
                                          Text(e.team!.name!, style: h12w500)),
                                  SizedBox(
                                      width: 70,
                                      child: Text(e.matches.toString(),
                                          style: h12w500)),
                                  SizedBox(
                                      width: 70,
                                      child: Text(e.wins.toString(),
                                          style: h12w500)),
                                  SizedBox(
                                      width: 70,
                                      child: Text(e.points.toString(),
                                          style: h12w500)),
                                ],
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ],
                  ),
                )
              ],
            )
          : Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
    );
  }
}
