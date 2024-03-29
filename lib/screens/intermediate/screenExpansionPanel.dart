import 'package:flutter/material.dart';

class ScreenExpansionPanel extends StatefulWidget {
  @override
  _State createState() => _State();
}

class MyItem {
  bool isExpanded;
  final String header;
  final Widget body;

  MyItem(this.isExpanded, this.header, this.body);
}

class _State extends State<ScreenExpansionPanel> {
  List<MyItem> _items = new List<MyItem>();

  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      _items.add(new MyItem(
          false,
          'Item at ${i}',
          new Container(
            padding: EdgeInsets.all(10.0),
            child: new Text('Hello World'),
          )));
    }
  }

  ExpansionPanel _createItem(MyItem item) {
    return new ExpansionPanel(
      headerBuilder: (BuildContext context, bool isExpanded) {
        return new Container(
          padding: EdgeInsets.all(4.0),
          child: new Text('Header ${item.header}'),
        );
      },
      body: item.body,
      isExpanded: item.isExpanded,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Expansion Panel'),
      ),
      body: new Center(
        child: (new Container(
            padding: EdgeInsets.all(32.0),
            child: new ListView(
              children: <Widget>[
                new ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _items[index].isExpanded = !_items[index].isExpanded;
                    });
                  },
                  children: _items.map(_createItem).toList(),
                ),
              ],
            ))),
      ),
    );
  }
}
