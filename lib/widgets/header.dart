import 'package:flutter/material.dart';

import '../res/styles.dart';

Header({
  bool shoBack = false,
  required String title,
}) {
  return AppBar(
    leading: shoBack ? BackButton(color: Colors.white) : null,
    backgroundColor: red,
    title: Text(
      title.toUpperCase(),
      style: h20w900It,
    ),
    centerTitle: true,
    elevation: 0,
  );
}
