import 'package:dark_mode/screen/newScreen.dart';
import 'package:flutter/material.dart';

import './darkscreen.dart';

class DarkMode extends StatefulWidget {
  @override
  _DarkModeState createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool _nextScreen = false;

  var _name;

  //TextEditingController name = TextEditingController();

  void _changeTheme() {
    DarkScreen.of(context).changeTheme();
  }

  Widget _getImage() {
    return Image.asset(
      'images/moon.png',
      width: 200.0,
      height: 150.0,
    );
  }

  Widget _showSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Dark Mode"),
        Switch(
          value: _nextScreen,
          onChanged: (value) {
            setState(() {
              _nextScreen = value;
              _changeTheme();
            });
          },
        ),
        Text("Light mode"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Mode"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _getImage(),
            _showSwitch(),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                onChanged: (value) {
                  _name = value;
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: Theme.of(context).textTheme.title,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: Theme.of(context).textTheme.title,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              elevation: 5.0,
              child: Text("Login"),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
