import 'package:flutter/material.dart';

class ScreenAppBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenAppBar> {
  int _value = 100;

  void _add() => setState(() => _value++);

  void _sub() => setState(() => _value--);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Bar'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: _add),
          new IconButton(icon: new Icon(Icons.remove), onPressed: _sub),
        ],
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(
                _value.toString(),
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
