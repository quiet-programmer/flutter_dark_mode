import 'package:flutter/material.dart';

class DarkScreen extends StatefulWidget {

  final Widget Function(BuildContext context, Brightness brightness) builder;
  final Brightness defaultBrightness;

  DarkScreen({this.builder, this.defaultBrightness});

  @override
  _DarkScreenState createState() => _DarkScreenState();

  static _DarkScreenState of(BuildContext context) {
    return context.ancestorStateOfType(const TypeMatcher<_DarkScreenState>());
  }
}

class _DarkScreenState extends State<DarkScreen> {

  Brightness _brightness;

  @override void initState(){
    super.initState();
    _brightness = widget.defaultBrightness;

    if(mounted){
      setState(() {
        
      });
    }
  }

  void changeTheme(){
    
    setState(() {
      _brightness = _brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _brightness);
  }
}
