import 'package:flutter/material.dart';
import 'package:flutter_application_1/Responsive/responsive.dart';
import 'package:flutter_application_1/Widgets/custom_button.dart';
import 'package:flutter_application_1/screens/create_room.dart';
import 'package:flutter_application_1/screens/join_room.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = "/main-menu";
  const MainMenuScreen({Key? key}) : super(key: key);

  void createRoom(BuildContext context){
    Navigator.pushNamed(context, CreateRoom.routeName);
  }

  void joinRoom(BuildContext context){
    Navigator.pushNamed(context, JoinRoom.routeName);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: () => createRoom(context), text: 'Create Room'),
            const SizedBox(height: 20,),
            CustomButton(onTap: () => joinRoom(context), text: 'Join Room')
          ],
        ),
      ),
    );
  }
}
