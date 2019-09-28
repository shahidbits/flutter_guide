import 'package:flutter/material.dart';

class ScreenAlertDialog extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenAlertDialog> {
  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text(message),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.pop(context),
            child: new Text('OK'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: () =>
                    _showAlert(context, 'Do you like Flutter? I do.'),
                child: new Text('Click'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
