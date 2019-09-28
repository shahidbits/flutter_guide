import 'package:flutter/material.dart';

class ScreenRadios extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenRadios> {
  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int val) => setState(() => _value1 = val);

  void _setValue2(int val) => setState(() => _value2 = val);

  Widget makeRadios() {
    List<Widget> list = new List<Widget>();

    for (int i = 0; i < 3; i++) {
      list.add(new Radio(
        value: i,
        groupValue: _value1,
        onChanged: _setValue1,
      ));
    }

    Column column = new Column(
      children: list,
    );

    return column;
  }

  Widget makeRadiosTiles() {
    List<Widget> list = new List<Widget>();

    for (int i = 0; i < 3; i++) {
      list.add(new RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.leading,
        title: new Text('Option ${i}'),
        subtitle: new Text('Subtitle ${i}'),
      ));
    }

    Column column = new Column(
      children: list,
    );

    return column;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Radios'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              makeRadios(),
              makeRadiosTiles(),
            ],
          ),
        )),
      ),
    );
  }
}
