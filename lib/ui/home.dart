import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentWeightValue = 1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI Calculator", style: new TextStyle(color: Colors.white),),
        backgroundColor: Colors.pinkAccent.shade100,
        centerTitle: true,
      ),

      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                color: Colors.deepOrange,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlatButton(onPressed: null, child: new Text("Pick your weight",
                      style: new TextStyle(color: Colors.lightBlueAccent,
                          fontSize: 18, fontWeight: FontWeight.w400),)),
                    new Padding(padding: new EdgeInsets.all(12.0)),
                    new Expanded(child: NumberPicker.horizontal(
                        initialValue: _currentWeightValue,
                        minValue: 1,
                        maxValue: 100,
                        highlightSelectedValue: true,
                        onChanged: (newValue) =>
                            setState(() => _currentWeightValue = newValue)),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
