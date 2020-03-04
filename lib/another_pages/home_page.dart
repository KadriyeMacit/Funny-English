import 'package:flutter/material.dart';
import 'package:funny_english/another_pages/foods.dart';
import 'package:funny_english/another_pages/game.dart';
import 'package:funny_english/another_pages/life.dart';
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
                    icon: Icon(Icons.favorite_border),
                    iconSize: 40.0,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 25.0,
                  child: IconButton(
                    onPressed: () => print('Share'),
                    icon: Image.asset("assets/out.png"),
                    iconSize: 35.0,
                    color: Colors.black,
                  ),
                ),

              ],
          ),

          Text("Welcome!"),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Container(
                          width: 90,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(93, 142, 155, 1.0),
                              borderRadius: new BorderRadius.only(
                                  topLeft:  const  Radius.circular(10.0),
                                  topRight: const  Radius.circular(10.0),
                                  bottomLeft: const  Radius.circular(10.0),
                                  bottomRight: const  Radius.circular(10.0),)
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: InkWell(
                                      onTap: (){

                                  },
                                      child: Image.asset("assets/menu/notes.png")
                                  )
                              ),
                              Text("take a not!")
                            ],
                          ),
                        ),


                      Container(
                          width: 90,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(93, 142, 155, 1.0),
                              borderRadius: new BorderRadius.only(
                                topLeft:  const  Radius.circular(10.0),
                                topRight: const  Radius.circular(10.0),
                                bottomLeft: const  Radius.circular(10.0),
                                bottomRight: const  Radius.circular(10.0),)
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => FoodPage()));
                                    },
                                      child: Image.asset("assets/menu/food.png")
                                  )
                              ),
                              Text("healthy")
                            ],
                          ),
                        ),


                    Container(
                          width: 90,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(93, 142, 155, 1.0),
                              borderRadius: new BorderRadius.only(
                                topLeft:  const  Radius.circular(10.0),
                                topRight: const  Radius.circular(10.0),
                                bottomLeft: const  Radius.circular(10.0),
                                bottomRight: const  Radius.circular(10.0),)
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => Oyun()));
                                      },
                                      child: Image.asset("assets/menu/game.png")
                                  )
                              ),
                              Text("gaming")
                            ],
                          ),
                        ),


                    ],
                  ),
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                     Container(
                        width: 90,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(93, 142, 155, 1.0),
                            borderRadius: new BorderRadius.only(
                              topLeft:  const  Radius.circular(10.0),
                              topRight: const  Radius.circular(10.0),
                              bottomLeft: const  Radius.circular(10.0),
                              bottomRight: const  Radius.circular(10.0),)
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                                width: 50,
                                height: 50,
                                child: InkWell(
                                  onTap: (){

                                  },
                                    child: Image.asset("assets/menu/travel.png")
                                )
                            ),
                            Text("travel")
                          ],
                        ),
                      ),


                     Container(
                        width: 90,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(93, 142, 155, 1.0),
                            borderRadius: new BorderRadius.only(
                              topLeft:  const  Radius.circular(10.0),
                              topRight: const  Radius.circular(10.0),
                              bottomLeft: const  Radius.circular(10.0),
                              bottomRight: const  Radius.circular(10.0),)
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                                width: 50,
                                height: 50,
                                child: InkWell(
                                  onTap: (){

                                  },
                                    child: Image.asset("assets/menu/translate.png")
                                )
                            ),
                            Text("work hard!")
                          ],
                        ),
                      ),


                  Container(
                        width: 90,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(93, 142, 155, 1.0),
                            borderRadius: new BorderRadius.only(
                              topLeft:  const  Radius.circular(10.0),
                              topRight: const  Radius.circular(10.0),
                              bottomLeft: const  Radius.circular(10.0),
                              bottomRight: const  Radius.circular(10.0),)
                        ),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: InkWell(
                                    onTap: (){
                                       Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => LifePage()));
                                    },
                                      child: Image.asset("assets/menu/life.png")
                                  )
                              ),
                              Text("happy life")
                            ],
                          ),
                        ),
                      ),


                  ],
                )
              ],
            ),
          )

            ],
          )



      );


  }
}

