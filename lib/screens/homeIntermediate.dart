import 'package:flutter/material.dart';

class HomeIntermediate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Intermediate Guide'),
        ),
        body: new Center(
          child: new Container(
            padding: new EdgeInsets.all(32.0),
            width: double.infinity,
            child: new ListView(
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Basic Widgets',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Tooltips'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Tooltips');
                        }),
                    new RaisedButton(
                        child: new Text('Chips and Keys'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/ChipsAndKeys');
                        }),
                    new RaisedButton(
                        child: new Text('Sliders and Indicators'),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/SlidersAndIndicators');
                        }),
                    new RaisedButton(
                        child: new Text('Popup Menu Button'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/PopupMenuButton');
                        }),
                  ],
                ),
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Layout Widgets',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Expansion Panel'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/ExpansionPanel');
                        }),
                    new RaisedButton(
                        child: new Text('Tab Bar View'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/TabBarView');
                        }),
                    new RaisedButton(
                        child: new Text('Stepper'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Stepper');
                        }),
                    new RaisedButton(
                        child: new Text('Grid View'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/GridView');
                        }),
                  ],
                ),
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Charts',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Charts'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Charts');
                        }),
                    new RaisedButton(
                        child: new Text('Grouping Data'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/GroupingData');
                        }),
                    new RaisedButton(
                        child: new Text('Animated Pie Charts'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/AnimatedPieCharts');
                        }),
                  ],
                ),
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Custom Widgets',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Custom Widget'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/CustomWidget');
                        }),
                    new RaisedButton(
                        child: new Text('Stateful Widget'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/StatefulWidget');
                        }),
                    new RaisedButton(
                        child: new Text('Nested Widget'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/NestedWidget');
                        }),
                    new RaisedButton(
                        child: new Text('Child to Parent'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/ChildToParent');
                        }),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
