import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  Widget _getList() {
    var listV = ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
          elevation: 10.0,
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("Welcome Home"),
            onTap: () {},
          ),
        )
      ],
    );

    return listV;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: _getList(),
    );
  }
}
