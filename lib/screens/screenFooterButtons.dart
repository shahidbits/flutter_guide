import 'package:flutter/material.dart';

class ScreenFooterButtons extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenFooterButtons> {
  String _value = 'Hello';

  void _onClick(String val) => setState(() => _value = val);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Footer Buttons'),
      ),
      persistentFooterButtons: <Widget>[
        new IconButton(
          icon: new Icon(Icons.timer),
          onPressed: () => _onClick('Button 1'),
        ),
        new IconButton(
          icon: new Icon(Icons.people),
          onPressed: () => _onClick('Button 2'),
        ),
        new IconButton(
          icon: new Icon(Icons.map),
          onPressed: () => _onClick('Button 3'),
        ),
        new IconButton(
          icon: new Icon(Icons.archive),
          onPressed: () => _onClick('Button 4'),
        ),
      ],
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
