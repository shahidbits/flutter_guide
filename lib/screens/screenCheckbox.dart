import 'package:flutter/material.dart';

class ScreenCheckbox extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenCheckbox> {
  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool val) => setState(() => _value1 = val);

  void _value2Changed(bool val) => setState(() => _value2 = val);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Checkbox'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Checkbox(value: _value1, onChanged: _value1Changed),
              new CheckboxListTile(
                value: _value2,
                onChanged: _value2Changed,
                title: new Text('Hello'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: new Text('Subtitle'),
                secondary: new Icon(Icons.archive),
                activeColor: Colors.red,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
