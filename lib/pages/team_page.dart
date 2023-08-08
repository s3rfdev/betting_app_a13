import 'package:betting1/pages/player_info.dart';
import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

import '../api/api.dart';
import '../models/players.dart';
import '../res/styles.dart';
import '../widgets/main_body.dart';
import '../widgets/table/table_header.dart';

class TeamPage extends StatefulWidget {
  TeamPage({super.key, required this.id, required this.name});
  int id;
  String name;
  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  Players? players;

  @override
  void initState() {
    super.initState();
    () async {
      var tmp = await SofaApi.getPlayers(teamId: widget.id);
      setState(() {
        players = tmp;
        print(players);
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    //print(info?.stadium);
    return MainBody(
      name: 'Club',
      tab: TabTitle.Table,
      child: players != null
          ? Column(
              children: [
                SizedBox(height: 20),
                Image.network(
                    'https://api.sofascore.app/api/v1/team/${widget.id}/image'),
                SizedBox(height: 20),
                Text(
                  widget.name,
                  style: h18w900,
                ),
                SizedBox(height: 30),
                SizedBox(
                  // width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 170,
                        child: Text('Player', style: h12w500),
                      ),
                      SizedBox(
                        width: 70,
                        child: Text('Age', style: h12w500),
                      ),
                      SizedBox(
                        width: 70,
                        child: Text('Height', style: h12w500),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // color: red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        ...players!.playersMap.values.map((e) {
                          var age = DateTime.now().year -
                              DateTime.fromMillisecondsSinceEpoch(
                                      int.parse(e.Age) * 1000)
                                  .year;
                          return InkWell(
                            onTap: () => Get.to(PlayerPage(
                                id: widget.id, name: widget.name, player: e)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: ClipOval(
                                      child: Image.network(
                                          'https://api.sofascore1.com/api/v1/player/${e.id}/image'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 130,
                                    child: Text(e.name, style: h12w500),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 70,
                                    child: Text(age.toString(), style: h12w500),
                                  ),
                                  SizedBox(
                                    width: 70,
                                    child: Text(e.height, style: h12w500),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                        SizedBox(height: 10),
                      ]),
                )
              ],
            )
          : SizedBox(),
    );
  }
}
