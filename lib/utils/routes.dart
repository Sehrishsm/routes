import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routes/Screen-three.dart';
import 'package:routes/home_screen.dart';
import 'package:routes/screen_two.dart';
import 'package:routes/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder:(context)=> HomeScreen());
      case RoutesName.screenTwo:
        return MaterialPageRoute(builder:(context)=> ScreenTwo(data: settings.arguments
        as Map,));
      case RoutesName.screenThree:
        return MaterialPageRoute(builder:(context)=> ScreenThree());
      default:

    return MaterialPageRoute(builder:(context){
      return const Scaffold(
        body: Center(child: Text('no route define')),
      );
    });
    }
  }
}