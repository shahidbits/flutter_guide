import 'package:flutter/material.dart';
import 'dart:async';

class ScreenDatePicker extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenDatePicker> {
  String _value = '';

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2016),
      lastDate: new DateTime(2020),
    );

    if (picked != null) {
      setState(() => _value = picked.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Date Picker'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new RaisedButton(
                onPressed: _selectDate,
                child: new Text('Select Date'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
