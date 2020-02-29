import 'package:flutter/material.dart';
import 'package:funny_english/models/circular_clipper.dart';
import 'package:funny_english/theme_page.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomeLayout();
  }

}

class HomeLayout extends State<HomePage> with TickerProviderStateMixin {


  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Stack(

              children: <Widget>[

                Container(
                  transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                  child: Hero(
                    tag: "assets/",
                    child: ClipShadowPath(
                      clipper: CircularClipper(),
                      shadow: Shadow(blurRadius: 20.0),
                      child: Image(
                        height: 400.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/stockholm.jpg"),
                      ),
                    ),
                  ),
                ),

                Positioned.fill(
                  bottom: 10.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RawMaterialButton(
                      padding: EdgeInsets.all(10.0),
                      elevation: 12.0,
                      onPressed: () => print('Play Video'),
                      shape: CircleBorder(),
                      fillColor: Colors.white,
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/maybe.png"),
                      )
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 20.0,
                  child: IconButton(
                    onPressed: () => print('Add to My List'),
                    icon: Icon(Icons.add),
                    iconSize: 40.0,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 25.0,
                  child: IconButton(
                    onPressed: () => print('Share'),
                    icon: Icon(Icons.share),
                    iconSize: 35.0,
                    color: Colors.black,
                  ),
                ),

              ],
          ),





        ],
      )

    );
  }
}

