import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

class ScreenCharts extends StatefulWidget {
  @override
  _State createState() => _State();
}

class Sales {
  String year;
  int sales;

  Sales(this.year, this.sales);
}

class _State extends State<ScreenCharts> {
  List<Sales> _data;
  List<charts.Series<Sales, String>> _chartData;

  void _generateData() {
    _data = new List<Sales>();
    _chartData = new List<charts.Series<Sales, String>>();

    final Random rand = new Random();
    for (int i = 2010; i < 2020; i++) {
      _data.add(new Sales(i.toString(), rand.nextInt(1000)));
    }
    _chartData.add(new charts.Series(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        data: _data,
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
        title: new Text('Charts'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Sales Data'),
              new Expanded(
                child: new charts.BarChart(_chartData),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
