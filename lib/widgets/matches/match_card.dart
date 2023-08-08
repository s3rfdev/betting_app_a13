import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MatchCard extends StatelessWidget {
  MatchCard({
    super.key,
    required this.name1,
    required this.name2,
    required this.id1,
    required this.id2,
    required this.showResult,
  });
  String name1;
  String name2;
  int id1;
  int id2;
  bool showResult;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 94,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 393,
              height: 94,
              decoration: ShapeDecoration(
                color: Color(0xFF252F38),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
          Positioned(
            left: 115,
            top: 14,
            child: Container(
              width: 163,
              height: 66,
              child: Stack(
                children: [
                  Positioned(
                    left: 61,
                    top: 6,
                    child: Container(
                      width: 41,
                      height: 55,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 41,
                              height: 32,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text(
                                      DateFormat('dd MMMM').format(showResult
                                          ? DateTime.now()
                                              .subtract(Duration(days: 2))
                                          : DateTime.now()
                                              .add(Duration(days: 2))),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
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
                                        color: Colors.white,
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
                          showResult
                              ? Positioned(
                                  left: 5,
                                  top: 37,
                                  child: Text(
                                    '${Random().nextInt(5)} : ${Random().nextInt(5)}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 163,
                      height: 66,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 41,
                              height: 66,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 1,
                                    top: 0,
                                    child: Container(
                                      width: 39,
                                      height: 46,
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
                                    top: 51,
                                    child: Text(
                                      name1,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
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
                            left: 121,
                            top: 0,
                            child: Container(
                              width: 42,
                              height: 66,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 2,
                                    top: 0,
                                    child: Container(
                                      width: 39,
                                      height: 46,
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
                                    left: 0,
                                    top: 51,
                                    child: Text(
                                      name2,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
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
            ),
          ),
        ],
      ),
    );
  }
}
