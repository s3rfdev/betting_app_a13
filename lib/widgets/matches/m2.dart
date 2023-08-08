import 'package:flutter/material.dart';

class Group70 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 49,
          height: 21,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4EFF6A),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 7,
                top: 0,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF5757),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 0,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF853),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 0,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4EFF6A),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 0,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF5757),
                    shape: OvalBorder(),
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
