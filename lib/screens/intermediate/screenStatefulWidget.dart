import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class ClockWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ClockState();
}

class _ClockState extends State<ClockWidget> {
  String _value = 'Timer Here';
  Timer _timer;

  @override
  Widget build(BuildContext context) {
    return new Text(
      _value,
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
      ),
    );
  }

  @override
  void initState() {
    _timer = new Timer.periodic(new Duration(seconds: 1), _onTimer);
  }

  void _onTimer(Timer timer) {
    DateTime currTime = new DateTime.now();
    DateFormat format = new DateFormat('hh:mm:ss');
    String formatted = format.format(currTime);

    setState(() => _value = formatted);
  }
}

class ScreenStatefulWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stateful Widget'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new ClockWidget(),
        )),
      ),
    );
  }
}
