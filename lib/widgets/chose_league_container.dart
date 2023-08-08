import 'package:flutter/material.dart';

import '../res/styles.dart';

class ChoseLeagueContainer extends StatelessWidget {
  const ChoseLeagueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 173,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 612,
              height: 173,
              decoration: BoxDecoration(color: Color(0xB28BC045)),
            ),
          ),
          Column(
            children: [
              Text(
                'CHOOSE THE LEAGUE',
                style: h14w700,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('images/sp.png'),
                      SizedBox(height: 10),
                      Text('SPAIN', style: h14w700),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/it.png'),
                      SizedBox(height: 10),
                      Text('ITALY', style: h14w700),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/br.png'),
                      SizedBox(height: 10),
                      Text('BRAZIL', style: h14w700),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
