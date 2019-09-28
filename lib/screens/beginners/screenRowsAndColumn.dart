import 'package:flutter/material.dart';

class ScreenRowsAndColumns extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenRowsAndColumns> {
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Rows and Columns'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Please login'),
              new Row(
                children: <Widget>[
                  new Text('Username'),
                  new Expanded(
                    child: new TextField(
                      controller: _user,
                    ),
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text('Password'),
                  new Expanded(
                    child: new TextField(
                      controller: _pass,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              new Padding(
                padding: EdgeInsets.all(12.0),
                child: new RaisedButton(
                  onPressed: () => print('Username: ${_user.text}'),
                  child: new Text('Login'),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
