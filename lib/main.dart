import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/create_room.dart';
import 'package:flutter_application_1/screens/join_room.dart';
import 'package:flutter_application_1/screens/main_menu_screen.dart';
import 'package:flutter_application_1/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainMenuScreen.routeName : (context) => const MainMenuScreen(),
        JoinRoom.routeName : (context) => const JoinRoom(),
        CreateRoom.routeName : (context) => const CreateRoom(),
        
      },
      initialRoute: MainMenuScreen.routeName  ,
    );
  }
  

  // This widget is the root of your application.
}