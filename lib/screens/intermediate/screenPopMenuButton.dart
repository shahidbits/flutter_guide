import 'package:flutter/material.dart';

class ScreenPopMenuButton extends StatefulWidget {
  @override
  _State createState() => _State();
}

enum Animal { Cat, Dog, Sparrow, Fish }

class _State extends State<ScreenPopMenuButton> {
  Animal _selected = Animal.Cat;
  String _value = 'Make a selection';
  List _list = new List();

  void _onSelected(Animal animal) {
    setState(() {
      _selected = animal;
      _value = 'You have selected ${_getDisplay(animal)}.';
    });
  }

  String _getDisplay(Animal animal) {
    int index = animal.toString().indexOf('.');
    index++;
    return animal.toString().substring(index);
  }

  @override
  void initState() {
    for (Animal animal in Animal.values) {
      _list.add(new PopupMenuItem(
        child: new Text(_getDisplay(animal)),
        value: animal,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Popup Menu Button'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(5.0),
                child: new Text(_value),
              ),
              new PopupMenuButton<Animal>(
                child: new Icon(Icons.input),
                initialValue: Animal.Cat,
                onSelected: _onSelected,
                itemBuilder: (BuildContext context) {
                  return _list;
                },),
            ],
          ),
        )),
      ),
    );
  }
}
