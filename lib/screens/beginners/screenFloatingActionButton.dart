import 'package:flutter/material.dart';

class ScreenFloatingActionButton extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenFloatingActionButton> {
  String _value = '';

  void _onClick() => setState(() => _value = DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Floating Action Button'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onClick,
        backgroundColor: Colors.red,
        mini: false,
        child: new Icon(Icons.timer),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(_value),
            ],
          ),
        )),
      ),
    );
  }
}
