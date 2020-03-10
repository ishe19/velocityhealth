import 'package:flutter/material.dart';
import 'package:velocityhealth/pages/landing_page.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
           title: Center(child: Text("Verification")),

       ),
       body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Image.asset('assets/images/transparent.png'),
//          new TextField(
//            decoration: InputDecoration(
//              border: OutlineInputBorder(
//                borderRadius: BorderRadius.circular(30.0)
//              ),
//              hintText: 'Enter your number here '
//            ),
//        //    controller:  _phoneNumberController,
//          ),
          Divider(),
          new TextField(

         decoration: InputDecoration(
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(30.0)
           ),
           hintText: 'Verification code'
         ),
       //     controller: _smsCodeController,
          ),

          new FlatButton(
            //onPressed: Navigator.push( context , build(BuildContext()=>La)),
       //       onPressed: () => _signInWithPhoneNumber(_smsCodeController.text),
              child: const Text("Sign In"))
        ],
      ),

         floatingActionButton: new FloatingActionButton(
   // onPressed: () => _sendCodeToPhoneNumber(),
    tooltip: 'get code',
    child: new Icon(Icons.send),
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  }

