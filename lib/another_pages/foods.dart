import 'package:flutter/material.dart';
import 'package:funny_english/models/circular_clipper.dart';
import 'package:funny_english/theme_page.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class FoodPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FoodLayout();
  }
}

class FoodLayout extends State<FoodPage> with TickerProviderStateMixin {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  final _chartSize = const Size(200.0, 200.0);

  double value = 10;
  Color labelColor = Colors.blue[200];

  void _increment() {
    setState(() {
      value += 10;
      List<CircularStackEntry> data = _generateChartData(value);
      _chartKey.currentState.updateData(data);
    });
  }

  void _decrement() {
    setState(() {
      value -= 10;
      List<CircularStackEntry> data = _generateChartData(value);
      _chartKey.currentState.updateData(data);
    });
  }

  List<CircularStackEntry> _generateChartData(double value) {
    Color dialColor = Colors.blue[200];
    if (value < 0) {
      dialColor = Colors.red[200];
    } else if (value < 50) {
      dialColor = Colors.yellow[200];
    }
    labelColor = dialColor;

    List<CircularStackEntry> data = <CircularStackEntry>[
      new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(
            value,
            dialColor,
            rankKey: 'percentage',
          )
        ],
        rankKey: 'percentage',
      ),
    ];

    if (value > 100) {
      labelColor = Colors.deepOrange[200];

      data.add(new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(
            value - 100,
            Colors.deepPurpleAccent[200],
            rankKey: 'percentage',
          ),
        ],
        rankKey: 'percentage2',
      ));
    }

    return data;
  }

  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Container(
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(right: 5, bottom: 0, top: 0),
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                height: 50,
                child: Material(
                  elevation: 10,
                  color: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(70),
                          bottomLeft: Radius.circular(70),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Eat a balanced dieT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ),
        ),


                Column(
          children: <Widget>[


                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(("assets/w.png"))
                          ),


                      Container(
                        child: new AnimatedCircularChart(
                          key: _chartKey,
                          size: _chartSize,
                          initialChartData: _generateChartData(value),
                          chartType: CircularChartType.Radial,
                          edgeStyle: SegmentEdgeStyle.round,
                          percentageValues: true,
                          holeLabel: '$value%',

                        ),
                      ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        RaisedButton(
                          onPressed: _decrement,
                          child: const Icon(Icons.remove),
                          shape: const CircleBorder(),
                          color: Colors.red[200],
                          textColor: Colors.white,
                        ),

                        RaisedButton(
                          onPressed: _increment,
                          child: const Icon(Icons.add),
                          shape: const CircleBorder(),
                          color: Colors.blue[200],
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),




          Container(
          height: MediaQuery.of(context).size.height / 3,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
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
                        padding: EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 60,
                                  child: Image.asset(
                                      "assets/meals/breakfast.png")),
                              Text(
                                "Breakfast",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        "bread",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child:
                                          Image.asset("assets/foods/bread.png"),
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
                                    child: Text(
                                      "cheese",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/cheese.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "ham",
                                      style: TextStyle(fontSize: 14),
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
                                    child: Text(
                                      "olive",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/olive.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "egg",
                                    style: TextStyle(fontSize: 14),
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
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 4 + 10,
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
                        padding: EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 60,
                                  child: Image.asset("assets/meals/snack.png")),
                              Text(
                                "Snack",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        "avocado",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                          "assets/foods/avakado.png"),
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
                                    child: Text(
                                      "banana",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/banana.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "oat",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/oat.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "milk",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/milk.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "walnut",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/walnut.png"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 4 + 10,
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
                        padding: EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 60,
                                  child: Image.asset("assets/meals/lunch.png")),
                              Text(
                                "Lunch",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        "pasta",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child:
                                          Image.asset("assets/foods/pasta.png"),
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
                                    child: Text(
                                      "salat",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/salat.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "soup",
                                      style: TextStyle(fontSize: 14),
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
                                    child: Text(
                                      "chicken",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/chicken.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "beans",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/beans.png"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 4 + 10,
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
                        padding: EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 60,
                                  child: Image.asset("assets/meals/snack.png")),
                              Text(
                                "Snack",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        "apple",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child:
                                          Image.asset("assets/foods/apple.png"),
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
                                    child: Text(
                                      "chocolate",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/foods/chocolate.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "almond",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/almond.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "carrot",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/carrot.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "fish",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/fish.png"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5, bottom: 15, top: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 4 + 10,
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
                        padding: EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 60,
                                  child:
                                      Image.asset("assets/meals/dinner.png")),
                              Text(
                                "Dinner",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        "broccoli",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                          "assets/foods/brokoli.png"),
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
                                    child: Text(
                                      "meatball",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/foods/meatball.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "rice",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/foods/rice.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "potato",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/potato.png"),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      "yogurt",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset("assets/foods/yogurt.png"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
