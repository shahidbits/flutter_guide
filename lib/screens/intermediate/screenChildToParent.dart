import 'package:flutter/material.dart';

class AuthenticatorWidget extends StatefulWidget {
  final ValueChanged<bool> onAuthenticated;

  AuthenticatorWidget({Key key, this.onAuthenticated});

  @override
  State<StatefulWidget> createState() =>
      new _StateAuthenticatorWidget(onAuthenticated: onAuthenticated);
}

class _StateAuthenticatorWidget extends State<AuthenticatorWidget> {
  TextEditingController _user;
  TextEditingController _password;

  final ValueChanged<bool> onAuthenticated;

  _StateAuthenticatorWidget({Key key, this.onAuthenticated});

  void _onPressed() {
    if (_user.text != 'user' || _password.text != '1234') {
      onAuthenticated(false);
    } else {
      onAuthenticated(true);
    }
  }

  @override
  void initState() {
    _user = new TextEditingController();
    _password = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Padding(
        padding: EdgeInsets.all(15.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: _user,
              decoration: new InputDecoration(
                labelText: 'Username',
              ),
            ),
            new TextField(
              controller: _password,
              decoration: new InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            new Padding(
              padding: EdgeInsets.all(10.0),
              child: new RaisedButton(
                onPressed: _onPressed,
                child: new Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScreenChildToParent extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ScreenChildToParent> {
  bool _isAuthenticated = false;

  void _onAuthentication(bool val) => setState(() => _isAuthenticated = val);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Child to Parent'),
      ),
      body: new Center(
        child: (new Container(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new AuthenticatorWidget(
                onAuthenticated: _onAuthentication,
              ),
              new Text('Result: ${_isAuthenticated}')
            ],
          ),
        )),
      ),
    );
  }
}
