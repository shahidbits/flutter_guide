import 'package:flutter/material.dart';

class ScreenNavFromChildWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenNavFromChildWidget> {
  String _value = '';

  void _onClick() => setState(() => _value = new DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Nav from Child Widget'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new IconButton(
                onPressed: _onClick,
                icon: new Icon(Icons.timer),
                tooltip: 'Click',
              ),
            ],
          ),
        )),
      ),
    );
  }
}
