import 'package:flutter/material.dart';

class ScreenExpanded extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenExpanded> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Expanded'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Image Demo'),
              new Expanded(
                child: new Image.asset('images/flutter_logo.png'),
              ),
              new Expanded(
                child: new Image.asset('images/flutter_logo.png'),
              ),
              new Expanded(
                child: new Image.asset('images/flutter_logo.png'),
              ),
              new Expanded(
                child: new Image.asset('images/flutter_logo.png'),
              ),
              new Expanded(
                child: new Image.asset('images/flutter_logo.png'),
              ),
              new Expanded(
                child: new Image.network(
                    'https://www.bitscakewala.com/static/images/logo/logoWhiteLR-min.png'),
              ),
              new Expanded(
                child: new Image.network(
                    'https://www.bitscakewala.com/static/images/logo/logoWhiteLR-min.png'),
              )
            ],
          ),
        )),
      ),
    );
  }
}
