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
import 'package:flutter_guide/screens/intermediate/screenTooltips.dart';
import 'package:flutter_guide/screens/intermediate/screenChipsAndKeys.dart';
import 'package:flutter_guide/screens/intermediate/screenSlidersAndIndicators.dart';
import 'package:flutter_guide/screens/intermediate/screenPopMenuButton.dart';
import 'package:flutter_guide/screens/intermediate/screenExpansionPanel.dart';
import 'package:flutter_guide/screens/intermediate/screenTabBarView.dart';
import 'package:flutter_guide/screens/intermediate/screenStepper.dart';
import 'package:flutter_guide/screens/intermediate/screenGridView.dart';
import 'package:flutter_guide/screens/intermediate/screenCharts.dart';
import 'package:flutter_guide/screens/intermediate/screenGroupingData.dart';
import 'package:flutter_guide/screens/intermediate/screenAnimatedPieCharts.dart';
import 'package:flutter_guide/screens/intermediate/screenCustomWidget.dart';
import 'package:flutter_guide/screens/intermediate/screenStatefulWidget.dart';
import 'package:flutter_guide/screens/intermediate/screenNestedWidget.dart';
import 'package:flutter_guide/screens/intermediate/screenChildToParent.dart';
import 'package:flutter_guide/screens/intermediate/screenPushNamed.dart';
import 'package:flutter_guide/screens/intermediate/screenPushNamedUntil.dart';
import 'package:flutter_guide/screens/intermediate/screenPushAndPop.dart';
import 'package:flutter_guide/screens/intermediate/screenNavFromChildWidget.dart';

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
        '/Tooltips': (BuildContext context) => new ScreenTooltips(),
        '/ChipsAndKeys': (BuildContext context) => new ScreenChipsAndKeys(),
        '/SlidersAndIndicators': (BuildContext context) =>
            new ScreenSlidersAndIndicators(),
        '/PopupMenuButton': (BuildContext context) => new ScreenPopMenuButton(),
        '/ExpansionPanel': (BuildContext context) => new ScreenExpansionPanel(),
        '/TabBarView': (BuildContext context) => new ScreenTabBarView(),
        '/Stepper': (BuildContext context) => new ScreenStepper(),
        '/GridView': (BuildContext context) => new ScreenGridView(),
        '/Charts': (BuildContext context) => new ScreenCharts(),
        '/GroupingData': (BuildContext context) => new ScreenGroupingData(),
        '/AnimatedPieCharts': (BuildContext context) =>
            new ScreenAnimatedPieCharts(),
        '/CustomWidget': (BuildContext context) => new ScreenCustomWidget(),
        '/StatefulWidget': (BuildContext context) => new ScreenStatefulWidget(),
        '/NestedWidget': (BuildContext context) => new ScreenNestedWidget(),
        '/ChildToParent': (BuildContext context) => new ScreenChildToParent(),
        '/PushNamed': (BuildContext context) => new ScreenPushNamed(),
        '/PushNamedUntil': (BuildContext context) => new ScreenPushNamedUntil(),
        '/PushAndPop': (BuildContext context) => new ScreenPushAndPop(),
        '/NavFromChildWidget': (BuildContext context) =>
            new ScreenNavFromChildWidget(),
      },
      home: new Home(),
    );
  }
}
