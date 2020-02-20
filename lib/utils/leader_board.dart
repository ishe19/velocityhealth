import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:velocityhealth/utils/uidata.dart';

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height / 2;
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
                gradient: LinearGradient(colors: [
                  Uidata.primaryColor,
                  Uidata.accentColor
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
                )
              ),
              height: screenHeight * 0.25,
              
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
                gradient: LinearGradient(colors: [
                  Uidata.accentColor,
                  Uidata.primaryColor
                  
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
                )
              ),
              height: screenHeight * 0.10,
              child: Row(
                children: <Widget>[
                  Icon(Icons.ac_unit)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}