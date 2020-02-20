import 'package:flutter/material.dart';
import 'package:velocityhealth/bmi_calculator/input_page/input_page.dart';
import 'package:velocityhealth/pages/forum.dart';
import 'package:velocityhealth/pages/log_in.dart';
import 'package:velocityhealth/utils/uidata.dart';





class DrawerClass extends StatefulWidget {


  static const int Settings = 0;
  static const int ABOUT = 1;


  //dropdown menu options
  static const List<String> accDropDownItems = ["Logout"];

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  var _navBarKey = GlobalKey<DrawerControllerState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _navBarKey,
      elevation: 2.0,
      child: Column(
        children: <Widget>[
          //USER AVATAR AND INFORMATION
          Container(
            height: 175.0,
            decoration: BoxDecoration(
              
            ),
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountEmail: Text("userEmail"),
                  accountName: Text("userName"),
//                  accountName: Text("UserName"),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person,
                      color: Colors.black87,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                   boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Uidata.accentColor,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                  ],
              gradient: new LinearGradient(
                      colors: [
                        Uidata.primaryColor,
                        Uidata.accentColor
                      ],
                      begin: const FractionalOffset(0.1, 0.1),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                  ),
                )
              ],
            ),
            
          ),

          Expanded(
            child: ListView(
              children: <Widget>[

                ListTile(
                  //Settings
                  title: Text("Forum"),
                  leading: Icon(Icons.speaker_notes, color: Uidata.primaryColor,),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForumPage()));
                  },
                ),
                Divider(),

                ListTile(
                  //Settings
                  title: Text("Body Mass Index Calculator"),
                  leading: Icon(Icons.directions_run, color: Uidata.primaryColor,),
                  onTap: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InputPage()));
                  },
                ),
                Divider(),


                ListTile(
                  //Settings
                  title: Text("Profile"),
                  leading: Icon(Icons.person, color: Uidata.primaryColor,),
                  onTap: () {
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InputPage()));
                  },
                ),
                Divider(),

                


                ListTile(
                  //Settings
                  title: Text("About Us"),
                  leading: Icon(Icons.help, color: Uidata.primaryColor,),
                  onTap: () {
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loading2Refresh(widget.userName, widget.userEmail)));
                  },
                ),
                Divider(),
                
                ListTile(
                  //Settings
                  title: Text("Log Out"),
                  leading: Icon(Icons.exit_to_app, color: Uidata.primaryColor,),
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}