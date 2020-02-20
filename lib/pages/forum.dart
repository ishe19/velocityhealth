import 'package:flutter/material.dart';
import 'package:velocityhealth/utils/uidata.dart';


class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {

    var topCategoryIcons = Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Uidata.primaryColor,
            Uidata.accentColor
          ],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp,
        )
      ),
      child: Container(
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
      child: Row(
        children: <Widget>[
          CategoryIcon(Icons.landscape, "Nature", true),
          CategoryIcon(Icons.headset, "Music", false),
          CategoryIcon(Icons.headset, "Music", false),
          CategoryIcon(Icons.headset, "Music", false),
        ],
      ),
      ),
    );



    return Scaffold(
      appBar: AppBar(
        title: Text("Forum"),
      ),
      body: Container(
        child: new Column(
          children: <Widget>[
            topCategoryIcons,
            // categoryMetric,
            // listView
            ],
        ),
      ),
    );
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