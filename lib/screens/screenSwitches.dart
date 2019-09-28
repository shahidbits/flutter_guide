import 'package:flutter/material.dart';

class ScreenSwitches extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenSwitches> {
  bool _value1 = false;
  bool _value2 = false;

  void _onChange1(bool val) => setState(() => _value1 = val);

  void _onChange2(bool val) => setState(() => _value2 = val);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Switches'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Switch(
                value: _value1,
                onChanged: _onChange1,
              ),
              new SwitchListTile(
                value: _value2,
                onChanged: _onChange2,
                title: new Text(
                  'Mute Notifications',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
