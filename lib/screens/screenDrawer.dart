import 'package:flutter/material.dart';

class ScreenDrawer extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenDrawer> {
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
        title: new Text('Drawer'),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Home'),
              new RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: new Text('Close'),
              ),
            ],
          ),
        ),
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
