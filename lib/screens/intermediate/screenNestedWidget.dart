import 'package:flutter/material.dart';
import 'dart:async';
import 'package:quiver/time.dart';

class TimeDisplay extends StatelessWidget {
  TimeDisplay({Key key, Color this.color, Duration this.duration, this.onClear})
      : super(key: key);

  Duration duration = new Duration();
  Color color = Colors.green;
  final ValueChanged<Duration> onClear;

  void _onClicked() {
    onClear(duration);
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.all(5.0),
          child: new Text(
            duration.toString(),
            style: new TextStyle(
              fontSize: 32.0,
              color: color,
            ),
          ),
        ),
        new IconButton(
          icon: new Icon(Icons.clear),
          onPressed: _onClicked,
        ),
      ],
    );
  }
}

class TimeCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _StateTimeCounter();
}

class _StateTimeCounter extends State<TimeCounter> {
  Stopwatch _watch;
  Timer _timer;
  Duration _duration;

  void _onStart() {
    setState(() {
      _watch = new Stopwatch();
      _timer = new Timer.periodic(new Duration(milliseconds: 250), _onTimeout);
    });
    _watch.start();
  }

  void _onStop() {
    _timer.cancel();
    _watch.stop();
  }

  void _onTimeout(Timer timer) {
    if (_watch.isRunning) {
      setState(() => _duration = _watch.elapsed);
    }
  }

  void _onClear(Duration value) {
    setState(() => _duration = new Duration());
  }

  @override
  void initState() {
    _duration = new Duration();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new TimeDisplay(
              color: Colors.red,
              duration: _duration,
              onClear: _onClear,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                    padding: EdgeInsets.all(10.0),
                    child: new RaisedButton(
                      onPressed: _onStart,
                      child: new Text('Start'),
                    )),
                new Padding(
                    padding: EdgeInsets.all(10.0),
                    child: new RaisedButton(
                      onPressed: _onStop,
                      child: new Text('Stop'),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ScreenNestedWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenNestedWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Nested Widget'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Stop Watch'),
              new TimeCounter(),
            ],
          ),
        )),
      ),
    );
  }
}
