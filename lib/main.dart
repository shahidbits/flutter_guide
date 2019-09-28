import 'package:flutter/material.dart';
import 'package:flutter_guide/screens/home.dart';
import 'package:flutter_guide/screens/homeBeginners.dart';
import 'package:flutter_guide/screens/homeIntermediate.dart';
import 'package:flutter_guide/screens/homeAdvanced.dart';
import 'package:flutter_guide/screens/beginners/screenRaisedButton.dart';
import 'package:flutter_guide/screens/beginners/screenRaisedButtonWithParams.dart';
import 'package:flutter_guide/screens/beginners/screenFlatButton.dart';
import 'package:flutter_guide/screens/beginners/screenIconButton.dart';
import 'package:flutter_guide/screens/beginners/screenTextField.dart';
import 'package:flutter_guide/screens/beginners/screenCheckbox.dart';
import 'package:flutter_guide/screens/beginners/screenRadios.dart';
import 'package:flutter_guide/screens/beginners/screenSwitches.dart';
import 'package:flutter_guide/screens/beginners/screenSlider.dart';
import 'package:flutter_guide/screens/beginners/screenDatePicker.dart';
import 'package:flutter_guide/screens/beginners/screenAppBar.dart';
import 'package:flutter_guide/screens/beginners/screenFloatingActionButton.dart';
import 'package:flutter_guide/screens/beginners/screenDrawer.dart';
import 'package:flutter_guide/screens/beginners/screenFooterButtons.dart';
import 'package:flutter_guide/screens/beginners/screenBottomNavigationBar.dart';
import 'package:flutter_guide/screens/beginners/screenBottomSheet.dart';
import 'package:flutter_guide/screens/beginners/screenSnackBar.dart';
import 'package:flutter_guide/screens/beginners/screenAlertDialog.dart';
import 'package:flutter_guide/screens/beginners/screenSimpleDialog.dart';
import 'package:flutter_guide/screens/beginners/screenRowsAndColumn.dart';
import 'package:flutter_guide/screens/beginners/screenCard.dart';
import 'package:flutter_guide/screens/beginners/screenExpanded.dart';
import 'package:flutter_guide/screens/beginners/screenListViewBuilder.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigtion',
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
        '/HomeBeginners': (BuildContext context) => new HomeBeginners(),
        '/HomeIntermediate': (BuildContext context) => new HomeIntermediate(),
        '/HomeAdvanced': (BuildContext context) => new HomeAdvanced(),
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
        '/BottomSheet': (BuildContext context) => new ScreenBottomSheet(),
        '/SnackBar': (BuildContext context) => new ScreenSnackBar(),
        '/AlertDialog': (BuildContext context) => new ScreenAlertDialog(),
        '/SimpleDialog': (BuildContext context) => new ScreenSimpleDialog(),
        '/RowsAndColumns': (BuildContext context) => new ScreenRowsAndColumns(),
        '/Card': (BuildContext context) => new ScreenCard(),
        '/Expanded': (BuildContext context) => new ScreenExpanded(),
        '/ListviewBuilder': (BuildContext context) =>
            new ScreenListViewBuilder(),
      },
      home: new Home(),
    );
  }
}
