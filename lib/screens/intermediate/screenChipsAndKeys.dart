import 'package:flutter/material.dart';

class ScreenChipsAndKeys extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenChipsAndKeys> {
  int _counter = 0;
  List<Widget> _list = new List<Widget>();

  String _value = 'Hello';

  void _onClick() {
    Widget child = _newItem(_counter);
    setState(() => _list.add(child));
  }

  @override
  void initState() {
    for (int i = 0; i < 5; i++) {
      Widget child = _newItem(i);
      _list.add(child);
    }
    _counter = _list.length;
  }

  Widget _newItem(int i) {
    Key key = new Key('item_${i}');
    Container child = new Container(
      key: key,
      padding: EdgeInsets.all(10.0),
      child: new Chip(
        label: new Text('Chip ${i}'),
        deleteIconColor: Colors.red,
        deleteButtonTooltipMessage: 'Delete',
        onDeleted: () => _removeItem(key),
        avatar: new CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: new Text(i.toString()),
        ),
      ),
    );

    _counter++;
    return child;
  }

  void _removeItem(Key key) {
    for (int i = 0; i < _list.length; i++) {
      Widget child = _list.elementAt(i);
      if (child.key == key) {
        setState(() => _list.removeAt(i));
        print('Removing ${key.toString()}');
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Chips and Keys'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onClick,
        child: new Icon(
          Icons.add,
        ),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: _list,
          ),
        )),
      ),
    );
  }
}