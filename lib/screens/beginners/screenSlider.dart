import 'package:flutter/material.dart';

class ScreenSlider extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenSlider> {
  double _value = 0.0;

  void _setValue(double val) => setState(() => _value = val);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Slider'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Value = ${(_value * 100).round()}'),
              new Slider(
                onChanged: _setValue,
                value: _value,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
