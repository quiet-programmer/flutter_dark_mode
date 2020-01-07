import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './widgets/dark_mode.dart';
import './widgets/darkscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    
    return DarkScreen(
      defaultBrightness: Brightness.dark,
      builder: (context, _brightness) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Dark Mode App",
          theme: ThemeData(
            brightness: _brightness,
          ),
          home: DarkMode(),
        );
      },
    );
  }
}
