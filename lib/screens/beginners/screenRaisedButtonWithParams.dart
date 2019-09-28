import 'package:flutter/material.dart';

class ScreenRaisedButtonWithParams extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenRaisedButtonWithParams> {
  String _value = 'Hello';

  void _onClick(val) {
    setState(() {
      _value = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Raised Button With Params'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new RaisedButton(
                onPressed: () => _onClick('Hello Shahid!'),
                child: new Text('Click'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
