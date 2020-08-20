import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        // brightness: Brightness.light,
        // primaryColorLight: Colors.white,
        fontFamily: "GoogleSansRegular",
      ),
    ));
