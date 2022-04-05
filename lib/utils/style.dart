import 'dart:ui';

import 'package:flutter/material.dart';

import 'colors.dart';

class AppStyles {

  static TextStyle whiteBoldFont =  const TextStyle(
      fontFamily: "Montserrat",
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 25.0
  );

  static TextStyle whiteFont = const TextStyle(
      fontFamily: "Montserrat",
      color: Colors.white,
      fontSize: 25.0
  );

  static TextStyle blackBoldFont =  const TextStyle(
    fontFamily: "Montserrat",
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle greyFont = const TextStyle(
    fontFamily: "Montserrat",
    fontSize: 17.0,
    color: Colors.grey,
  );
}
