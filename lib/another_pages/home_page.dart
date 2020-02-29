import 'package:flutter/material.dart';
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

      body: Center(

        child: Container(

          height: MediaQuery.of(context).size.height/4 + 20,

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  color: Colors.pink[100],
                  width: MediaQuery.of(context).size.width/3,
                  height: 10,
                  child: Material(
                    elevation: 10,
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(70))),
                    child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(

                          child: Column(

                            children: <Widget>[
                              Container(
                                height: 60,
                                  child: Image.asset("assets/breakfast.png")
                              ),
                              Expanded(
                                child: Text("Breakfast",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                            ],
                          ),


                        )
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  color: Colors.pink[100],
                  width: MediaQuery.of(context).size.width/3,
                  height: MediaQuery.of(context).size.height/4 + 10,
                  child: Material(
                    elevation: 10,
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(70))),
                    child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(

                          child: Column(
                            children: <Widget>[

                              Container(
                                  height: 60,
                                  child: Image.asset("assets/lunch.png")
                              ),
                              Expanded(
                                child: Text("Lunch",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                            ],
                          ),


                        )
                    ),
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  color: Colors.pink[100],
                  width: MediaQuery.of(context).size.width/3,
                  height: MediaQuery.of(context).size.height/4 + 10,
                  child: Material(
                    elevation: 10,
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(70))),
                    child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(

                          child: Column(
                            children: <Widget>[

                              Container(
                                  height: 60,
                                  child: Image.asset("assets/snack.png")
                              ),
                              Expanded(
                                child: Text("Snack",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                            ],
                          ),


                        )
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  color: Colors.pink[100],
                  width: MediaQuery.of(context).size.width/3,
                  height: MediaQuery.of(context).size.height/4 + 10,
                  child: Material(
                    elevation: 10,
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(70))),
                    child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(

                          child: Column(
                            children: <Widget>[

                              Container(
                                  height: 60,
                                  child: Image.asset("assets/dinner.png")
                              ),
                              Expanded(
                                child: Text("Dinner",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                            ],
                          ),

                        )
                    ),
                  ),
                ),
              ),



            ],
          ),
        )

      ),
    );
  }
}

