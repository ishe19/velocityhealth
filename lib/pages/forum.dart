import 'package:flutter/material.dart';
import 'package:velocityhealth/pages/forum_detail.dart';
import 'package:velocityhealth/utils/uidata.dart';
import 'package:clay_containers/clay_containers.dart';


class ForumPage extends StatefulWidget {

  ForumPage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  /// Top Icons
  var topCategoyIcons = new Container(
    alignment: Alignment.center,
    decoration: new BoxDecoration(
        gradient: new LinearGradient(
      colors: [
       Uidata.primaryColor,
       Uidata.accentColor
      ],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp,
    )),
    child: new Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 0.0,
      ),
      decoration: new BoxDecoration(
        color: Uidata.accentColor,
        // border: new Border.all(color: Colors.black, width: 1.0),
        borderRadius: new BorderRadius.only(
          topLeft: new Radius.circular(30.0),
          topRight: new Radius.circular(30.0),
        ),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new CategoryIcon(Icons.landscape, "Nature", true),
          new CategoryIcon(Icons.headset, "Music", false),
          new CategoryIcon(Icons.movie, "Movies", false),
          new CategoryIcon(Icons.place, "Places", false),
        ],
      ),
    ),
  );

  var categoryMetric = new Container(
    padding: const EdgeInsets.all(5.0),
    margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
    decoration: new BoxDecoration(
      gradient: new LinearGradient(
        colors: [
          Colors.grey.shade200,
          Uidata.primaryColor,
        ],
        begin: const FractionalOffset(0.0, 0.5),
        end: const FractionalOffset(0.0, 1.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      ),
      // border: new Border.all(color: Colors.black, width: 1.0),
      borderRadius: new BorderRadius.only(
        bottomLeft: new Radius.circular(30.0),
        bottomRight: new Radius.circular(30.0),
      ),
    ),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new CategoryIcon(Icons.cake, "Topic 1", false),
        new CategoryIcon(Icons.book, "Topic 2", false),
        new CategoryIcon(Icons.games, "Topic 3", false),
        new CategoryIcon(Icons.history, "Topic 4", false),
      ],
    ),
  );

  static final listItemsData = [
    new ListEntry("Forum 1", "test", "description 1", 54, 2, true),
    new ListEntry("Forum 2", "test", "description 2",  154, 3,false),
    new ListEntry("Forum 3", "test", "description 3", 971, 0, false),
    new ListEntry("Forum 4", "test", "description 4",  124, 2,true),
    new ListEntry("Forum 5", "test", "description 5",  412, 5,true),
    new ListEntry("Forum 6", "test", "description 6",  12, 1,true),
  ];


  var listView = new ListView.builder(
    itemBuilder: (BuildContext context, int index) =>
        new EntryItem(listItemsData[index]),
    itemCount: listItemsData.length,
    shrinkWrap: true,
  );


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2.0,
        title: new Text(
          widget.title,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: _onSearchPressed,
          ),
        ],
      ),
      body:  Container(
          child: new ListView(
            children: <Widget>[
              // topCategoyIcons, 
              categoryMetric, 
              listView
              
              
              
        //       ],
             ] // 
    )),
    );
  }
  void _onSearchPressed() {
    Navigator.pop(context);
  }

}


class CategoryIcon extends StatelessWidget {
  const CategoryIcon(this.icon, this.iconText, this.selected);

  final String iconText;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new IconButton(
            icon: new Icon(icon),
            onPressed: _onSearchPressed,
            color: selected == true
                ? Uidata.primaryColor
                : Colors.black,
          ),
          new Text(iconText)
        ],
      ),
    );
  }

  static void _onSearchPressed() {
  }
}

class ListEntry {
  final String title;
  final String icon;
  final String description;
  final int views;
  final int responses;
  final bool answered;

  ListEntry(this.title, this.icon, this.description, this.views, this.responses, this.answered);
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final ListEntry entry;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: new BoxDecoration(
        // color: Uidata.accentColor,
        borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
      ),
      child: ClayContainer(
        // color: Colors.white,
        child: ListTile(
          title: new Text(entry.title),
          subtitle: new Text(entry.description),
          leading: new Icon(
            Icons.dashboard,
            color: Uidata.accentColor,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ForumDetailPage(entry.title)));
            },
        ),
      ),
    );
  }
}

