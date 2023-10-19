import 'package:flutter/material.dart';
import 'package:routes/Screen-three.dart';
import 'package:routes/home_screen.dart';
import 'package:routes/screen_two.dart';
import 'package:routes/utils/routes.dart';
import 'package:routes/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
   initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
