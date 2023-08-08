import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/players.dart';

class PlayerData extends StatelessWidget {
  PlayerData({
    super.key,
    required this.player,
  });

  Player player;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 178,
      child: Stack(
        children: [
          Positioned(
            left: 247,
            top: 3,
            child: Container(
              width: 73,
              height: 172,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 73,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              '${player.height} CM',
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            top: 29,
                            child: Text(
                              'Growth',
                              style: TextStyle(
                                color: Colors.black,
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
                  Positioned(
                    left: 1,
                    top: 64,
                    child: Container(
                      width: 72,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 2,
                            top: 0,
                            child: Text(
                              '${DateTime.now().year - DateTime.fromMillisecondsSinceEpoch(int.parse(player.Age) * 1000).year} AGE',
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 29,
                            child: Text(
                              '19 July 1996',
                              style: TextStyle(
                                color: Colors.black,
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
                  Positioned(
                    left: 27,
                    top: 128,
                    child: Container(
                      width: 46,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 23,
                            top: 0,
                            child: Text(
                              player.shirtNumber,
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 29,
                            child: Text(
                              'Number',
                              style: TextStyle(
                                color: Colors.black,
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
          ),
          Positioned(
            left: 109,
            top: 67,
            child: Container(
              width: 102,
              height: 44,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      '${2 + Random().nextInt(10)}.000 \$M',
                      style: TextStyle(
                        color: Color(0xFF383838),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 29,
                    child: Text(
                      'Cost',
                      style: TextStyle(
                        color: Colors.black,
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
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 93.95,
              height: 178,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 70,
                    child: Container(
                      width: 51,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'LEFT',
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 29,
                            child: Text(
                              'Work leg',
                              style: TextStyle(
                                color: Colors.black,
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
                  Positioned(
                    left: 0,
                    top: 134,
                    child: Container(
                      width: 78,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              player.position,
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 29,
                            child: Text(
                              'Position',
                              style: TextStyle(
                                color: Colors.black,
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
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 93.95,
                      height: 50,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 93.95,
                              height: 30,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 29.95,
                                      height: 30,
                                      child: Stack(
                                        children: [
                                          ClipRect(
                                            child: Image.network(
                                                'https://www.sofascore1.com/static/images/flags/br.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 34.95,
                                    top: 3,
                                    child: Text(
                                      'BRAZIL',
                                      style: TextStyle(
                                        color: Color(0xFF383838),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 35,
                            child: Text(
                              'Citizenship',
                              style: TextStyle(
                                color: Colors.black,
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
          ),
        ],
      ),
    );
  }
}
