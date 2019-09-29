import 'package:flutter/material.dart';
import 'dart:math';

class ScreenGridView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class Area {
  int index;
  String name;
  Color color;

  Area({this.index: 1, this.name: 'Area', this.color: Colors.lightBlueAccent});
}

class _State extends State<ScreenGridView> {
  int _location;
  List<Area> _areas;

  @override
  void initState() {
    _areas = new List();
    for (int i = 0; i < 16; i++) {
      _areas.add(new Area(index: i, name: 'Area ${i}'));
    }

    Random rand = new Random();
    _location = rand.nextInt(_areas.length);
  }

  void _onClick(int index) {
    setState(() {
      if (index == _location) {
        _areas[index].color = Colors.green;
      } else {
        _areas[index].color = Colors.red;
      }
    });
  }

  Widget _generate(int index) {
    return new GridTile(
        child: new Container(
      padding: EdgeInsets.all(5.0),
      child: new RaisedButton(
        onPressed: () => _onClick(index),
        color: _areas[index].color,
        child: new Text(
          _areas[index].name,
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Grid View'),
      ),
      body: new Container(
        padding: EdgeInsets.all(32.0),
        child: new Center(
          child: new GridView.count(
            crossAxisCount: 4,
            children: new List<Widget>.generate(16, _generate),
          ),
        ),
      ),
    );
  }
}
