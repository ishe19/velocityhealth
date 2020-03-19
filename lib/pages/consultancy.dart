import 'package:flutter/material.dart';
import 'package:velocityhealth/pages/calendar.dart';
import 'package:velocityhealth/pages/forum.dart';
import 'package:velocityhealth/pages/forum_detail.dart';

class PopupMenu extends StatefulWidget {
  @override
  _PopupMenuState createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: ListTile(
                  title: Text('Set up appointment'),
                  leading: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalendarHome()));
                    },
                  ),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: ListTile(
                  title: Text('Consultancy Forum'),
                  leading: IconButton(
                    icon: Icon(Icons.forum),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ForumDetailPage(' Consultancy ')));
                    },
                  ),
                ),
              )
            ],
          )
        ],
        title: Center(
          child: Text("Consultancy"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.topCenter,
              height: 200.0,
              width: 250.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalendarHome()));
                },
                child: Card(
                  child: Image.asset('assets/images/transparent.png'),
                ),
              )),
          Container(
            

            alignment: Alignment.bottomCenter,
            height: 200.0,
            width: 250.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForumPage(
                              title: 'Forum',
                            )));
              },
              child: Card(

                child: Image.asset("assets/images/Kim-Tae-Hee.jpg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
