import 'package:flutter/material.dart';
import 'home.dart' as home;
import 'forum.dart' as forum;
import 'profile.dart' as profile;
import 'package:velocityhealth/bmi_calculator/input_page/input_page.dart' as bmi;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState(){
    super.initState();

    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 55,
        child: Material(
            color: Colors.white,
            child: TabBar(
              controller: tabController,
              tabs: <Widget>[

                Tab(
                  icon: Icon(Icons.home, color: Colors.black,),
                  child: Text("Home", style: TextStyle(color: Colors.black,)),
                ),
                Tab(
                  icon: Icon(Icons.directions_run, color: Colors.black,),
                  child: Text("BMI", style: TextStyle(color: Colors.black,),),
                ),
                Tab(
                  icon: Icon(Icons.chat, color: Colors.black,),
                  child: Text("Forum", style: TextStyle(color: Colors.black,),),
                ),
                Tab(
                  icon: Icon(Icons.person, color: Colors.black,),
                  child: Text("Profile", style: TextStyle(color: Colors.black,),),
                ),
              ],
            )
        ),
      ),
      body: TabBarView(
      controller: tabController,
      children: <Widget>[
      home.Home(),
      bmi.InputPage(),
      forum.ForumPage(title: "Forum"),
      profile.UserProfilePage()


      ],
    ),

    );
  }
}






