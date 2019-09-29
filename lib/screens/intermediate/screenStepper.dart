import 'package:flutter/material.dart';

class ScreenStepper extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenStepper> {
  List<Step> _steps;
  int _current;

  @override
  void initState() {
    _current = 0;
    _steps = <Step>[
      new Step(
          title: new Text('Step 1'),
          content: new Text('Select Products'),
          isActive: true),
      new Step(
          title: new Text('Step 2'),
          content: new Text('Checkout'),
          isActive: true),
      new Step(
          title: new Text('Step 3'),
          content: new Text('Enter Address'),
          isActive: true),
      new Step(
          title: new Text('Step 4'),
          content: new Text('Make Payment'),
          isActive: true),
    ];
  }

  void _stepContinue() {
    setState(() {
      _current++;
      if (_current >= _steps.length) {
        _current = _steps.length - 1;
      }
    });
  }

  void _stepCancel() {
    setState(() {
      _current--;
      if (_current <= 0) {
        _current = 0;
      }
    });
  }

  void _stepTap(int index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stepper'),
      ),
      body: new Center(
        child: (new Container(
            padding: EdgeInsets.all(32.0),
            child: new Stepper(
              steps: _steps,
              type: StepperType.vertical,
              currentStep: _current,
              onStepCancel: _stepCancel,
              onStepContinue: _stepContinue,
              onStepTapped: _stepTap,
            ))),
      ),
    );
  }
}
