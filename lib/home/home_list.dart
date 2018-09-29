import 'package:flutter/material.dart';
import 'stories.dart';
import 'home_stories_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeList extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    return new ListView.builder(
      itemCount: 100,
      itemBuilder: (context, i)=> i == 0 ? new SizedBox(
        child: new Stories(),
        height: deviceSize.height * 0.2 + 10,
      ) : new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                // 1st Row
                new Row(
                    children: <Widget>[
                        new Container(
                    height : 40.0,
                    width : 40.0,
                    decoration: new BoxDecoration(
                      shape : BoxShape.circle,
                      image : new DecorationImage(
                        fit : BoxFit.fill,
                        image : new NetworkImage("https://media.licdn.com/dms/image/C4D03AQFJh-12glcz4w/profile-displayphoto-shrink_100_100/0?e=1543449600&v=beta&t=aQVITxHtzAaisuUoV20V5irXe40M1-ZC7Njo-oN6-ZE")
                      )
                    ),
                  ),
                  new SizedBox(width: 10.0),
                  new Text("@anant00729", style: TextStyle(fontWeight: FontWeight.bold )),
                  ],
                ),
                new IconButton(
                  icon : new Icon(Icons.more_vert),
                  onPressed: null,
                )
              ],
            ),
          ),
          
          // 2st Row
          new Flexible(
            fit : FlexFit.loose,
            child : new Image.network("https://i.amz.mshcdn.com/UIXBi-ATK1K-DEStZq68SuAbURI=/fit-in/850x850/https%3A%2F%2Fmashable.com%2Fwp-content%2Fgallery%2Fbest-instagram-images%2F1mattrubin.jpg",
              fit: BoxFit.cover,
            )
          ),

          // 3st Row
          new Padding(
            padding : const EdgeInsets.all(16.0),
            child : new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Icon(
                      FontAwesomeIcons.heart
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      FontAwesomeIcons.comment
                    ),
                    new SizedBox(
                      width : 16.0
                    ),
                    new Icon(
                      FontAwesomeIcons.paperPlane
                    )
                  ],
                ),
                new Icon(FontAwesomeIcons.bookmark)
              ],
            )
          ),

          // 4st Row
          new Padding(
            padding : const EdgeInsets.symmetric(horizontal: 16.0),
            child: new Text(
              "Liked by anant007 and 345,000 others",
              style : new TextStyle(fontWeight: FontWeight.bold)
            ),
          ),

          //5th row
          Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:
                      Text("1 Day Ago", style: TextStyle(color: Colors.grey)),

                )

        ],
      ),
    );
  }
}