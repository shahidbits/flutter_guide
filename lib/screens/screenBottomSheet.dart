import 'package:flutter/material.dart';

class ScreenBottomSheet extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenBottomSheet> {
  String _value = 'Hello';

  void _onClick() {
    setState(() {
      _value = DateTime.now().toString();
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
              new Text(_value),
              new FlatButton(
                onPressed: _onClick,
                child: new Text('Click'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
