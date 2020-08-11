import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentWeightValue = 1;
  int _currentHeightValue = 1;
  void _calculateBMI(){

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI Calculator", style: new TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 200,
                alignment: Alignment.topCenter,
                decoration: new BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: new BorderRadius.circular(25.0),
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlatButton(onPressed: null, child: new Text("Pick your weight",
                      style: new TextStyle(color: Colors.white,
                          fontSize: 18, fontWeight: FontWeight.w500),)),
                    new Padding(padding: new EdgeInsets.all(12.0)),
                    NumberPicker.horizontal(
                        initialValue: _currentWeightValue,
                        minValue: 1,
                        maxValue: 100,
                        highlightSelectedValue: true,
                        onChanged: (newValue) =>
                            setState(() => _currentWeightValue = newValue)),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 200,
                decoration: new BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: new BorderRadius.circular(25.0),
                ),

                alignment: Alignment.center,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlatButton(onPressed: null, child: new Text("Pick your height in cm",
                      style: new TextStyle(color: Colors.brown,
                          fontSize: 18, fontWeight: FontWeight.w500),)),
                    new Padding(padding: new EdgeInsets.all(12.0)),
                    new Expanded(child: NumberPicker.horizontal(
                        initialValue: _currentHeightValue,
                        minValue: 1,
                        maxValue: 250,
                        highlightSelectedValue: true,
                        onChanged: (newValue) =>
                            setState(() => _currentHeightValue = newValue)),)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: new FlatButton(onPressed: _calculateBMI, child: new Text("Calculate BMI",
                  style: new TextStyle(backgroundColor: Colors.blueAccent,
              color: Colors.white,)),
                color: Colors.blueAccent, ),
            ),
          ],
        ),
      ),
    );
  }
}
