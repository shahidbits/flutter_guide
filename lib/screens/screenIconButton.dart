import 'package:flutter/material.dart';

class ScreenIconButton extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenIconButton> {
  int _value = 100;

  void _add() {
    setState(() {
      _value++;
    });
  }

  void _sub() {
    setState(() {
      _value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flat Button'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Value = ${_value}'),
              new IconButton(icon: new Icon(Icons.add), onPressed: _add),
              new IconButton(icon: new Icon(Icons.remove), onPressed: _sub),
            ],
          ),
        )),
      ),
    );
  }
}
