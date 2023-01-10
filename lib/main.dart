import 'package:flutter/material.dart';
import 'ft_01_mainmenu/ft_mainmenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      //theme for default mode, if darktheme not set, dark mode will follow theme
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData.dark(),

      //current system theme mode
      themeMode: ThemeMode.system,
      home: const MainMenu(),
    );
  }
}
