import 'package:flutter/material.dart';

import '../../res/styles.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 60),
          SizedBox(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 150, child: Text('Club', style: h12w500)),
                SizedBox(width: 70, child: Text('PG', style: h12w500)),
                SizedBox(width: 70, child: Text('G+/-', style: h12w500)),
                SizedBox(width: 70, child: Text('PTS', style: h12w500)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
