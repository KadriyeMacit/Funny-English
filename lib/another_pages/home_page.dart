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

          height: MediaQuery.of(context).size.height/3 ,

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
                                  child: Image.asset("assets/meals/breakfast.png")
                              ),

                               Text("Breakfast",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                                ),


                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[

                                    Padding(
                                      padding: const EdgeInsets.only(right: 5.0),
                                      child: Text("bread",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset("assets/foods/bread.png"),
                                    )

                                  ],
                                ),
                              ),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text("cheese",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/cheese.png"),
                                  )

                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text("ham",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/ham.png"),
                                  )

                                ],
                              ),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(right: 3.0),
                                    child: Text("olive",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/olive.png"),
                                  )

                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  
                                  Text("egg",
                                    style: TextStyle(
                                       fontSize: 14
                                    ),
                                  ),
                                  
                                  Container(
                                    height: 20,
                                    width: 30,
                                    child: Image.asset("assets/foods/egg.png"),
                                  )
                                  
                                ],
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
                                  child: Image.asset("assets/meals/lunch.png")
                              ),

                               Text("Lunch",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[

                                    Padding(
                                      padding: const EdgeInsets.only(right: 5.0),
                                      child: Text("pasta",
                                        style: TextStyle(
                                            fontSize: 14
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset("assets/foods/pasta.png"),
                                    )

                                  ],
                                ),
                              ),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text("salat",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/salat.png"),
                                  )

                                ],
                              ),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text("soup",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/soup.png"),
                                  )

                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text("chicken",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/chicken.png"),
                                  )

                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text("beans",
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/beans.png"),
                                  )

                                ],
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
                                  child: Image.asset("assets/meals/snack.png")
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
                                  child: Image.asset("assets/meals/dinner.png")
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

