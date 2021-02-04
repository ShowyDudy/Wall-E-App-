import 'package:flutter/material.dart';
import 'package:battery_indicator/battery_indicator.dart';

double textSize = 20;

class Battery extends StatefulWidget {
  @override
  _BatteryState createState() => _BatteryState();
}

class _BatteryState extends State<Battery> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Battery'),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.orange,
                    Colors.deepOrangeAccent,
                  ],
                ),
              ),
            ),
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: new Center(
                    child: new BatteryIndicator(
                      style: BatteryIndicatorStyle.values[1],
                      colorful: true,
                      showPercentNum: true,
                      mainColor: Colors.black,
                      size: 50,
                      ratio: 3.0,
                      showPercentSlide: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

