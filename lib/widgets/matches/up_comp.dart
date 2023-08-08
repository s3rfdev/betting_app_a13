import 'package:flutter/material.dart';

import '../../res/styles.dart';

class UpCopm extends StatelessWidget {
  UpCopm({
    super.key,
    required this.isUp,
    required this.change,
  });
  bool isUp;
  Function change;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => change(true),
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: isUp ? orange : null,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Past',
                style: !isUp ? h14w700 : h14w700.copyWith(color: blueGrey),
              ),
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () => change(false),
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: !isUp ? orange : null,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Upcoming',
                style: isUp ? h14w700 : h14w700.copyWith(color: blueGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
