import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Guide'),
        ),
        body: new Center(
          child: new Container(
            padding: new EdgeInsets.all(32.0),
            width: double.infinity,
            child: new ListView(
              children: <Widget>[
                new RaisedButton(
                    child: new Text('Beginners'),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/HomeBeginners');
                    }),
                new RaisedButton(
                    child: new Text('Intermediate'),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/HomeIntermediate');
                    }),
                new RaisedButton(
                    child: new Text('Advanced'),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/HomeAdvanced');
                    }),
              ],
            ),
          ),
        ));
  }
}
