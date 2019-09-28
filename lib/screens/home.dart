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
                    new RaisedButton(
                        child: new Text('Raised Button with Params'),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/RaisedButtonWithParams');
                        }),
                    new RaisedButton(
                        child: new Text('Flat Button'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/FlatButton');
                        }),
                    new RaisedButton(
                        child: new Text('Icon Button'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/IconButton');
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
                    new RaisedButton(
                        child: new Text('Checkbox'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Checkbox');
                        }),
                    new RaisedButton(
                        child: new Text('Radios'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Radios');
                        }),
                    new RaisedButton(
                        child: new Text('Switches'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Switches');
                        }),
                    new RaisedButton(
                        child: new Text('Slider'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Slider');
                        }),
                    new RaisedButton(
                        child: new Text('Date Picker'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/DatePicker');
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
                    new RaisedButton(
                        child: new Text('Floating Action Button'),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/FloatingActionButton');
                        }),
                    new RaisedButton(
                        child: new Text('Drawer'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Drawer');
                        }),
                    new RaisedButton(
                        child: new Text('Footer Buttons'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/FooterButtons');
                        }),
                    new RaisedButton(
                        child: new Text('Bottom Navigation Bar'),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/BottomNavigationBar');
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
                    new RaisedButton(
                        child: new Text('Snack Bar'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/SnackBar');
                        }),
                    new RaisedButton(
                        child: new Text('Alert Dialog'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/AlertDialog');
                        }),
                    new RaisedButton(
                        child: new Text('Simple Dialog'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/SimpleDialog');
                        }),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
