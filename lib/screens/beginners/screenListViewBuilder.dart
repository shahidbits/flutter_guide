import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class ScreenListViewBuilder extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenListViewBuilder> {
  Map _countries = new Map();

  void _getData() async {
    String url = 'http://country.io/names.json';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() => _countries = jsonDecode(response.body));
      print('Data is loaded with ${_countries.length} countries.');
    }
  }

  @override
  void initState() {
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Listview Builder'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text(
                'Countries',
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              new Expanded(
                child: new ListView.builder(
                  itemCount: _countries.length,
                  itemBuilder: (BuildContext context, int index) {
                    String key = _countries.keys.elementAt(index);
                    return new Row(
                      children: <Widget>[
                        new Text('${key}: '),
                        new Text(_countries[key]),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
