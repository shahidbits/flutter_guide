import 'package:flutter/material.dart';

class ScreenTextField extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenTextField> {
  String _value = '';

  void _onChange(String val) {
    setState(() {
      _value = 'Change: ${val}';
    });
  }

  void _onSubmit(String val) {
    setState(() {
      _value = 'Submit: ${val}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text Field'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Hello',
                  hintText: 'Hint',
                  icon: new Icon(Icons.people),
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
