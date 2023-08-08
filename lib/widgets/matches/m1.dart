import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Group68 extends StatelessWidget {
  int id1;
  int id2;
  bool white;
  Group68({
    super.key,
    required this.id1,
    required this.id2,
    this.white = false,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 270,
          height: 76,
          child: Stack(
            children: [
              Positioned(
                left: 206,
                top: 0,
                child: Container(
                  width: 64,
                  height: 76,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://api.sofascore1.com/api/v1/team/$id1/image"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 65,
                  height: 76,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://api.sofascore1.com/api/v1/team/$id2/image"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 115,
                top: 22,
                child: Container(
                  width: 41,
                  height: 32,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Text(
                          DateFormat('dd MMMM')
                              .format(DateTime.now().add(Duration(days: 2))),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: white ? Colors.white : Color(0xFF383838),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4,
                        top: 17,
                        child: Text(
                          '1${Random().nextInt(10)}:00',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: white ? Colors.white : Color(0xFF383838),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
