import 'package:flutter/material.dart';
import 'package:velocityhealth/bmi_calculator/input_page/input_page.dart';
import 'package:neumorphic/neumorphic.dart' as neu;
import 'package:clay_containers/clay_containers.dart' as clay;
import 'package:velocityhealth/utils/drawer.dart';
import 'package:velocityhealth/utils/leader_board.dart';
import 'package:velocityhealth/utils/uidata.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  // The list we are getting the data for the leaderboard from
  List leaderBoard = [
    "Jason Moyo",
    "Tiffany Sawyer",
    "Vanessa Jackson",
    "Tafadzwa Mambo",
    "Justin Mutizwa"
  ];


  List leaderBoardPoints = [
    "100",
    "97",
    "92",
    "85",
    "70"
  ];




  @override
  Widget build(BuildContext context) {
    final screenSizeWidth = MediaQuery.of(context).size.width;
    final screenSizeHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: Text("Velocity Wellness", style: TextStyle(color: Colors.black87)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 5.0,
        iconTheme:  IconThemeData(
          color: Colors.black87
          ),
      ),
      drawer: DrawerClass(),
      body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  clay.ClayContainer(
                    // color: Colors.red,
          
          width: screenSizeWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: clay.ClayContainer(
                    height: 180.0,
                    width: screenSizeWidth,
                    child: Stack(
                      fit: StackFit.expand,
                        children: <Widget> [
                          Image(
                            height: 180.0,
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/appbar.jpg"),
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top:150.0),
                        child: Text("A Healthier Lifestyle", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0 ))
                      )
                              ]
                    ),                        
              ),
            ),
            
            Padding(
                  padding: const EdgeInsets.only(top: 10),
            ),
            Text("Wellness Leaderboard:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0), ),
            Padding(
                  padding: const EdgeInsets.only(top: 10),
            ),
            clay.ClayContainer(
                  height: 150.0,
                  width: screenSizeWidth / 1.05,
                  color:  Colors.grey.shade300,
                  child: ListView.builder(
                        itemCount: leaderBoard.length,
                        itemBuilder: (BuildContext context, int index) {
                          int i =  index + 1;
                          return Card(
                            elevation: 2.0,
                            child: ListTile(
                            leading: Text("$i.)", style: TextStyle(fontWeight: FontWeight.bold)),
                            title: Text(leaderBoard[index], style: TextStyle(fontWeight: FontWeight.bold),),
                            trailing: Text(leaderBoardPoints[index], style: TextStyle(fontWeight: FontWeight.bold),),
                          ));
                        },
                      ),
            )
          ],),
        ),
        Padding(
                  padding: const EdgeInsets.only(top: 10),
            ),
        // LeaderBoard()
        cardStyle("assets/images/financial.jpg", "Financial Wellness"),
        cardStyle("assets/images/legal.jpg", "Environmental Wellness"),
        cardStyle("assets/images/mental.jpg", "Intellectual Wellness"),
        cardStyle("assets/images/nutri.jpg", "Spiritual Wellness"),
        cardStyle("assets/images/nutri.jpg", "Occupational Wellness"),
        cardStyle("assets/images/nutri.jpg", "Emotional Wellness"),
        cardStyle("assets/images/nutri.jpg", "Social Wellness"),
        cardStyle("assets/images/nutri.jpg", "Physical Wellness"),
                ],
              ),
      ),
      )
    );
  }

  Widget cardStyle(String img, String title) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){
          print("PRESSED");
        },
              child: Container(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                        child: neu.NeuCard(
                          bevel: 0.5,
                          curveType: neu.CurveType.concave,
                        child: Container(
                          color: Colors.grey.shade300,
                          height: 100,
                          width: MediaQuery.of(context).size.width /1.2,
                          child:
                            Padding(
                              padding: const EdgeInsets.only(left: 70.0),
                         
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(title, style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 18.0)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
                                    ),
                                    clay.ClayContainer(
                                      height: 20.0,
                                      // width: 40.0,
                                      child: Text("Read more..."),
                                      // color: Uidata.btnColor,
                                    )
                                  ],
                                )
                                
                              ],
                            ),
                        ),
                      ),
                    ),
                    ),
                  ),
                  clay.ClayContainer(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image(
                          fit: BoxFit.fitHeight,
                          height: 110,
                          width: 100,
                          image: AssetImage(img),
                      ),
                        ),
                    ),
                  )
                ],
              ),
            ),
      ),
    );
  }



}