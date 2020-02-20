import 'package:flutter/material.dart';

import 'package:velocityhealth/pages/log_in.dart';
import 'package:velocityhealth/utils/uidata.dart';

void main() => runApp(VelocityHealth());


class VelocityHealth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Velocity Health",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: Uidata.primaryColor,
        accentColor: Uidata.accentColor,
        scaffoldBackgroundColor: Colors.white
      ),

    );
  }
}