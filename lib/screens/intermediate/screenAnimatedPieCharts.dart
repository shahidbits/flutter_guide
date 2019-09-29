import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

class ScreenAnimatedPieCharts extends StatefulWidget {
  @override
  _State createState() => _State();
}

class Sales {
  int year;
  int sales;
  charts.Color color;

  Sales(this.year, this.sales, this.color);
}

class _State extends State<ScreenAnimatedPieCharts> {
  List<Sales> _data;
  List<charts.Series<Sales, int>> _chartData;

  _generateData() {
    _chartData = new List<charts.Series<Sales, int>>();
    _data = <Sales>[
      new Sales(0, 100, charts.MaterialPalette.red.shadeDefault),
      new Sales(1, 25, charts.MaterialPalette.green.shadeDefault),
      new Sales(2, 75, charts.MaterialPalette.blue.shadeDefault),
      new Sales(3, 10, charts.MaterialPalette.yellow.shadeDefault),
    ];

    _chartData.add(new charts.Series(
        id: 'Sales',
        data: _data,
        colorFn: (Sales sales, __) => sales.color,
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        displayName: 'sales'));
  }

  @override
  void initState() {
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Animated Pie Charts'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Sales Data'),
              new Expanded(
                child: new charts.PieChart(
                  _chartData,
                  animate: true,
                  animationDuration: new Duration(seconds: 2),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
