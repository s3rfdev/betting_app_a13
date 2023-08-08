import 'package:flutter/material.dart';

import '../../res/styles.dart';

class statHeader extends StatefulWidget {
  @override
  State<statHeader> createState() => _statHeaderState();
}

class _statHeaderState extends State<statHeader> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => setState(() {
              i = 0;
            }),
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: i == 0 ? orange : null,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'All',
                style: i != 0 ? h14w700 : h14w700.copyWith(color: blueGrey),
              ),
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () => setState(() {
              i = 1;
            }),
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: i == 1 ? orange : null,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                '1st',
                style: i != 1 ? h14w700 : h14w700.copyWith(color: blueGrey),
              ),
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () => setState(() {
              i = 2;
            }),
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: i == 2 ? orange : null,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                '2nd',
                style: i != 2 ? h14w700 : h14w700.copyWith(color: blueGrey),
              ),
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () => setState(() {
              i = 3;
            }),
            child: Container(
              alignment: Alignment.center,
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                  color: i == 3 ? orange : null,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Lineup',
                style: i != 3 ? h14w700 : h14w700.copyWith(color: blueGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
