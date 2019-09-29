import 'package:flutter/material.dart';

class ScreenCustomWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(32.0),
      child: new Text('Hello from Custom Widget'),
    );
  }
}

class _State extends State<ScreenCustomWidget> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Custom Widget'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new MyCustomWidget()
            ],
          ),
        )),
      ),
    );
  }
}
