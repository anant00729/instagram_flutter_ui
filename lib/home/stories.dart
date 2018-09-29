import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    final topText = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Stories",
          style : new TextStyle(fontWeight : FontWeight.bold)
        ),
        new Row(
          children: <Widget>[
            new Icon(Icons.play_arrow),
            new Text("Watch All", style : TextStyle(fontWeight : FontWeight.bold))
            ]
          )
      ],
    );

    final stories = Expanded(
      child : new Padding(
        padding : const EdgeInsets.only(top : 8.0),
        child : new ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i)=> new Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            new Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                shape : BoxShape.circle,
                image : new DecorationImage(
                  fit : BoxFit.fill,
                  image : new NetworkImage("https://media.licdn.com/dms/image/C4D03AQFJh-12glcz4w/profile-displayphoto-shrink_100_100/0?e=1543449600&v=beta&t=aQVITxHtzAaisuUoV20V5irXe40M1-ZC7Njo-oN6-ZE")
                ),
              ), 
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            i == 0 ? Positioned(
              right : 10.0,
              child: new CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 10.0,
                child : new Icon(Icons.add, size : 14.0, color: Colors.white)
              ),
            ) : new Container() 
          ],
        ),
      )
      )
      
      
      
    ); 

    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories
        ],
      )
    );
  }
}