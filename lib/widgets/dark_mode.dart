import 'package:dark_mode/screen/newScreen.dart';
import 'package:flutter/material.dart';

import './darkscreen.dart';

class DarkMode extends StatefulWidget {
  @override
  _DarkModeState createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {

  bool _nextScreen = false;

  void _changeTheme(){
    DarkScreen.of(context).changeTheme();
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
            Text(
              "Bobby Welcome's you",
              style: TextStyle(fontFamily: 'serif', fontSize: 30.0),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
            ),
            RaisedButton(
              child: Text("Go there"),
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