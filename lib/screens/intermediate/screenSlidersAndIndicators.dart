import 'package:flutter/material.dart';

class ScreenSlidersAndIndicators extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenSlidersAndIndicators> {
  double _value = 0.75;

  void _onChange(double val) => setState(() => _value = val);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sliders and Indicators'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text((_value * 100).round().toString()),
              new Slider(
                onChanged: _onChange,
                value: _value,
              ),
              new Container(
                padding: new EdgeInsets.all(32.0),
                child: LinearProgressIndicator(
                  value: _value,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
              new Container(
                padding: new EdgeInsets.all(32.0),
                child: CircularProgressIndicator(
                  value: _value,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
