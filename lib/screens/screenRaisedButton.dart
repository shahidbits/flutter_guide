import 'package:flutter/material.dart';

class ScreenRaisedButton extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenRaisedButton> {
  String _value = 'Hello';

  void _onClick() {
    setState(() {
      _value = 'Hello World!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Raised Button'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new RaisedButton(
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
