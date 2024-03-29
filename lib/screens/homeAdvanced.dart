import 'package:flutter/material.dart';

class HomeAdvanced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Advanced Guide'),
        ),
        body: new Center(
          child: new Container(
            padding: new EdgeInsets.all(32.0),
            width: double.infinity,
            child: new ListView(
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Button Widgets',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Raised Button'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/RaisedButton');
                        }),
                  ],
                ),
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Input Widgets',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Text Field'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/TextField');
                        }),
                  ],
                ),
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Scaffold',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('App Bar'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/AppBar');
                        }),
                  ],
                ),
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Notification',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Bottom Sheet'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/BottomSheet');
                        }),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
