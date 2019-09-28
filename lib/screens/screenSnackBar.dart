import 'package:flutter/material.dart';

class ScreenSnackBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenSnackBar> {
  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  void _showBar() {
    _scaffoldState.currentState.showSnackBar(
        new SnackBar(content: new Text('The user has been deleted.')));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      appBar: new AppBar(
        title: new Text('Snack Bar'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: _showBar,
                child: new Text('Click'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
