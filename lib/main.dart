import 'package:flutter/material.dart';
import 'package:flutter_guide/screens/home.dart';
import 'package:flutter_guide/screens/screenRaisedButton.dart';
import 'package:flutter_guide/screens/screenRaisedButtonWithParams.dart';
import 'package:flutter_guide/screens/screenFlatButton.dart';
import 'package:flutter_guide/screens/screenIconButton.dart';
import 'package:flutter_guide/screens/ScreenTextField.dart';
import 'package:flutter_guide/screens/ScreenCheckbox.dart';
import 'package:flutter_guide/screens/ScreenRadios.dart';
import 'package:flutter_guide/screens/ScreenSwitches.dart';
import 'package:flutter_guide/screens/ScreenSlider.dart';
import 'package:flutter_guide/screens/ScreenDatePicker.dart';
import 'package:flutter_guide/screens/screenAppBar.dart';
import 'package:flutter_guide/screens/screenFloatingActionButton.dart';
import 'package:flutter_guide/screens/screenDrawer.dart';
import 'package:flutter_guide/screens/screenFooterButtons.dart';
import 'package:flutter_guide/screens/screenBottomNavigationBar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigtion',
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
        '/RaisedButton': (BuildContext context) => new ScreenRaisedButton(),
        '/RaisedButtonWithParams': (BuildContext context) =>
            new ScreenRaisedButtonWithParams(),
        '/FlatButton': (BuildContext context) => new ScreenFlatButton(),
        '/IconButton': (BuildContext context) => new ScreenIconButton(),
        '/TextField': (BuildContext context) => new ScreenTextField(),
        '/Checkbox': (BuildContext context) => new ScreenCheckbox(),
        '/Radios': (BuildContext context) => new ScreenRadios(),
        '/Switches': (BuildContext context) => new ScreenSwitches(),
        '/Slider': (BuildContext context) => new ScreenSlider(),
        '/DatePicker': (BuildContext context) => new ScreenDatePicker(),
        '/AppBar': (BuildContext context) => new ScreenAppBar(),
        '/FloatingActionButton': (BuildContext context) =>
            new ScreenFloatingActionButton(),
        '/Drawer': (BuildContext context) => new ScreenDrawer(),
        '/FooterButtons': (BuildContext context) => new ScreenFooterButtons(),
        '/BottomNavigationBar': (BuildContext context) =>
            new ScreenBottomNavigationBar(),
      },
      home: new Home(),
    );
  }
}
