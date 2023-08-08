import 'package:flutter/material.dart';

import '../widgets/main_body.dart';
import '../widgets/matches/m1.dart';
import '../widgets/matches/m2.dart';
import '../widgets/matches/m3.dart';
import '../widgets/matches/preview_table.dart';

class PreViewPage extends StatefulWidget {
  PreViewPage({
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
  State<PreViewPage> createState() => _PreViewPageState();
}

class _PreViewPageState extends State<PreViewPage> {
  @override
  Widget build(BuildContext context) {
    return MainBody(
      tab: TabTitle.Matches,
      name: 'Preview',
      child: Column(
        children: [
          Container(
            width: double.infinity,
            // margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                Group68(id1: widget.id1, id2: widget.id2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Group70(),
                    Group70(),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  alignment: Alignment.centerLeft,
                  child: Group69(),
                ),
                SizedBox(height: 30),
                PreviewTable(id1: widget.id1, id2: widget.id2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
