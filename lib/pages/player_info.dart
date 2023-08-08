import 'package:flutter/material.dart';

import '../models/players.dart';
import '../res/styles.dart';
import '../widgets/main_body.dart';
import '../widgets/table/player_data.dart';
import '../widgets/table/table_header.dart';

class PlayerPage extends StatefulWidget {
  PlayerPage({
    super.key,
    required this.id,
    required this.name,
    required this.player,
  });
  int id;
  String name;
  Player player;
  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //print(info?.stadium);
    return MainBody(
        name: 'Details',
        tab: TabTitle.Table,
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 20),
              ClipOval(
                child: Image.network(
                    'https://api.sofascore1.com/api/v1/player/${widget.player.id}/image'),
              ),
              SizedBox(height: 20),
              Text(
                widget.player.name,
                style: h14w700.copyWith(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(
                        'https://api.sofascore.app/api/v1/team/${widget.id}/image'),
                  ),
                  SizedBox(width: 10),
                  Text(widget.name),
                ],
              ),
              SizedBox(height: 30),
              PlayerData(
                player: widget.player,
              ),
            ],
          ),
        ));
  }
}
