import 'package:flutter/material.dart';

class ScreenTabBarView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class Choice {
  final String title;
  final IconData icon;

  const Choice(this.title, this.icon);
}

class _State extends State<ScreenTabBarView>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  List<Choice> _items = const <Choice>[
    const Choice('CAR', Icons.directions_car),
    const Choice('BICYCLE', Icons.directions_bike),
    const Choice('BOAT', Icons.directions_boat),
    const Choice('BUS', Icons.directions_bus),
    const Choice('TRAIN', Icons.directions_railway),
    const Choice('WALK', Icons.directions_walk),
  ];

  @override
  void initState() {
    _controller = new TabController(length: _items.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Tab Bar View'),
          bottom: new PreferredSize(
            preferredSize: const Size.fromHeight(40.0),
            child: new Theme(
              data: Theme.of(context).copyWith(accentColor: Colors.white),
              child: new Container(
                height: 48.0,
                alignment: Alignment.center,
                child: new TabPageSelector(
                  controller: _controller,
                ),
              ),
            ),
          ),
        ),
        body: new TabBarView(
          controller: _controller,
          children: _items.map((Choice item) {
            return new Container(
              padding: EdgeInsets.all(25.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(item.title),
                    new Icon(
                      item.icon,
                      size: 120.0,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}
