import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../api/api.dart';
import '../models/teams.dart';
import '../res/styles.dart';
import '../widgets/main_body.dart';
import '../widgets/matches/match_card.dart';
import '../widgets/matches/up_comp.dart';
import 'match_stat_page.dart';
import 'preview_page.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  @override
  void initState() {
    super.initState();
    () async {
      var tmp = await SofaApi.getTeams(trId: 325);
      setState(() {
        teams = tmp;
      });
    }();
  }

  bool isUp = true;
  Teams? teams;

  @override
  Widget build(BuildContext context) {
    List<Team> list1 = [];
    List<Team> list2 = [];
    int i = 1;
    teams?.teamsMap.values.forEach((element) {
      i++;
      if (i % 2 == 0) {
        list1.add(element);
      } else {
        list2.add(element);
      }
    });

    return MainBody(
      showBack: false,
      tab: TabTitle.Matches,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: blueGrey,
            ),
            child: teams != null
                ? Column(
                    children: [
                      //----
                      UpCopm(
                        isUp: isUp,
                        change: (val) => setState(() {
                          isUp = val;
                        }),
                      ),
                      for (var i = isUp ? 20 : 60; i < (isUp ? 50 : 70); i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: InkWell(
                            onTap: () {
                              if (!isUp) {
                                Get.to(PreViewPage(
                                  name1: list1[i].name,
                                  name2: list2[i].name,
                                  id1: list1[i].id,
                                  id2: list2[i].id,
                                ));
                              } else {
                                Get.to(MatchStatPage(
                                  name1: list1[i].name,
                                  name2: list2[i].name,
                                  id1: list1[i].id,
                                  id2: list2[i].id,
                                ));
                              }
                            },
                            child: MatchCard(
                              name1: list1[i].name,
                              name2: list2[i].name,
                              id1: list1[i].id,
                              id2: list2[i].id,
                              showResult: isUp,
                            ),
                          ),
                        ),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
