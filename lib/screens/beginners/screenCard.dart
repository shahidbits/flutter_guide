import 'package:flutter/material.dart';

class ScreenCard extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenCard> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Card'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Card(
                child: new Container(
                  padding: EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World!'),
                      new Text('How are you?'),
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World!'),
                      new Text('How are you?'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
