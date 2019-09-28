import 'package:flutter/material.dart';

class ScreenBottomSheet extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenBottomSheet> {

  void _showBottom() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            padding: EdgeInsets.all(14.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'Are you sure you want to continue?',
                  style: new TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new RaisedButton(
                  child: new Text('Close'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Bottom Sheet'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: _showBottom,
                child: new Text('Click here'),
              )
            ],
          ),
        )),
      ),
    );
  }
}
