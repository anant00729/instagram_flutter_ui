import 'package:flutter/material.dart';
import 'home/home_list.dart';
import 'home/home_stories_list.dart';

class Home extends StatefulWidget {
  @override
  _Home createState(){
    return new _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context){
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: HomeList())
      ],
    );
  }
}