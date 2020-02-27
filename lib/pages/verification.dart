
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override

    // TODO: implement build

    @override
    Widget build(BuildContext context) {
      return new Scaffold(

        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                //  controller:  _phoneNumberController,
              ),
              new TextField(
                //   controller: _smsCodeController,
              ),
              new FlatButton(
                //  onPressed: () => _signInWithPhoneNumber(_smsCodeController.text),
                  child: const Text("Sign In"))
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          //  onPressed: () => _sendCodeToPhoneNumber(),
          tooltip: 'get code',
          child: new Icon(Icons.send),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    }
  }


