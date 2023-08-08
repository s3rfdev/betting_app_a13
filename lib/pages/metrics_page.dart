import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';
import '../api/api.dart';
import '../models/players.dart';
import '../models/teams.dart';
import '../res/styles.dart';
import '../widgets/main_body.dart';
import 'player_info.dart';

class MetricsPage extends StatefulWidget {
  MetricsPage({super.key, required this.id, required this.name});
  int id;
  String name;
  @override
  State<MetricsPage> createState() => _MetricsPageState();
}

class _MetricsPageState extends State<MetricsPage> {
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
    super.initState();
    () async {
      var tmp = await SofaApi.getTeams(trId: 325);
      setState(() {
        teams = tmp;
      });
    }();
  }

  var labels = [
    'goals:',
    'goal assists:',
    'goal assists:',
    'penalty goals:',
    'free kick goals:',
    'frequency of goals scored (per minute):',
    'total shots on goal per game:',
    'shots on goal per game:',
    'missed shots:',
    'chances created:',
    'game assists accuracy:',
    'key passes per game:',
    'Accurate longballs per game:',
    'successful dribbling in the game:',
    'penalty shootout victory:',
    'tackles per game:',
    'interceptions per game:',
    'takeaways per game:',
    'loss of possession per game:',
    'yellow cards:',
    'Red cards:',
    'saves per game:',
    'most missed shots per game:',
    'least conceded per game:',
    'dry matches:',
  ];
  var labels2 = [
    'ratinG:',
    'Goal scored:',
    'Big chance:',
    'Missed chance:',
    'Hitting the bar:',
    'Yellow cards:',
    'Red cards:',
    'Possession of the ball:',
    'Pass accuracy per game:',
    'Accurate longballs per game:',
    'Accurate crosses per game:',
    'Total shots on goal per game:',
    'Hits on goal per game:',
    'Successful dribbling per game:',
    'Tackles per game:',
    'Interceptions per game:',
    'Tackles per game:',
    'Corner kicks per game:',
    'Fouls per game:',
    'Penalty kick goals:',
    'Violations committed:',
    'Dry matches:',
  ];
  Teams? teams;
  @override
  Widget build(BuildContext context) {
    //print(info?.stadium);
    int i = 2;
    int j = 2;
    return MainBody(
      showBack: false,
      tab: TabTitle.Metrics,
      child: (players != null && teams != null)
          ? Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Top players'.toUpperCase(),
                        style: h18w900,
                      ),
                      Text(
                        'GO TO TEAMS',
                        style: h18w900,
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: blueGrey2,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          ...players!.playersMap.values.map((e) {
                            i++;
                            var age = DateTime.now().year -
                                DateTime.fromMillisecondsSinceEpoch(
                                        int.parse(e.Age) * 1000)
                                    .year;
                            return InkWell(
                              onTap: () => Get.to(PlayerPage(
                                  id: widget.id, name: widget.name, player: e)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  children: [
                                    if (i % 3 == 0)
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          labels[i ~/ 3].toUpperCase(),
                                          style: h14w400,
                                        ),
                                      ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 10),
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
                                        Expanded(child: SizedBox(width: 10)),
                                        SizedBox(
                                          width: 70,
                                          child: CircleAvatar(
                                            backgroundColor: red,
                                            child: Text(
                                                Random().nextInt(10).toString(),
                                                style: h12w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                          SizedBox(height: 50),
                          Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'GO TO PLAYERS',
                              style: h18w900,
                            ),
                          ),
                          SizedBox(height: 30),
                          ...teams!.teamsMap.values.take(63).map((e) {
                            j++;

                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  children: [
                                    if (j % 3 == 0)
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          labels2[j ~/ 3].toUpperCase(),
                                          style: h14w400,
                                        ),
                                      ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 10),
                                        SizedBox(
                                          width: 30,
                                          height: 30,
                                          child: ClipOval(
                                            child: Image.network(
                                                'https://api.sofascore.app/api/v1/team/${e.id}/image'),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        SizedBox(
                                          width: 130,
                                          child: Text(e.name, style: h12w500),
                                        ),
                                        Expanded(child: SizedBox(width: 10)),
                                        SizedBox(
                                          width: 70,
                                          child: CircleAvatar(
                                            backgroundColor: red,
                                            child: Text(
                                                Random().nextInt(10).toString(),
                                                style: h12w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ]),
                  )
                ],
              ),
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
