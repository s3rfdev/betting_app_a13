import 'package:flutter/material.dart';

import '../widgets/main_body.dart';
import '../widgets/matches/m1.dart';
import '../widgets/matches/m2.dart';
import '../widgets/matches/m3.dart';
import '../widgets/matches/preview_table.dart';
import '../widgets/matches/stat.dart';
import '../widgets/matches/stat_header.dart';

class MatchStatPage extends StatefulWidget {
  MatchStatPage({
    super.key,
    required this.name1,
    required this.name2,
    required this.id1,
    required this.id2,
  });
  String name1;
  String name2;
  int id1;
  int id2;

  @override
  State<MatchStatPage> createState() => _MatchStatPageState();
}

class _MatchStatPageState extends State<MatchStatPage> {
  @override
  Widget build(BuildContext context) {
    return MainBody(
      tab: TabTitle.Matches,
      name: 'STATISTIC',
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                //  color: gr,
                ),
            child: Column(
              children: [
                statHeader(),
                SizedBox(height: 20),
                Group68(id1: widget.id1, id2: widget.id2, white: true),
                SizedBox(height: 20),
                Stat(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
