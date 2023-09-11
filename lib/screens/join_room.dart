import 'package:flutter/material.dart';
import 'package:flutter_application_1/Responsive/responsive.dart';
import 'package:flutter_application_1/Widgets/custom_button.dart';
import 'package:flutter_application_1/Widgets/custom_text.dart';
import 'package:flutter_application_1/Widgets/custom_textField.dart';

class JoinRoom extends StatefulWidget {
  static String routeName = "/join-room";
  const JoinRoom({Key? key}) : super(key: key);

  @override
  State<JoinRoom> createState() => _JoinRoomState();

}

class _JoinRoomState extends State<JoinRoom> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roomController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose : it is done so that the memory space is not exceeded that it it doesnot overflows from the memory
    super.dispose();
    _nameController.dispose();
    _roomController.dispose();
  }

  @override
  Widget build(BuildContext context){
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ // we are not using const here for this child bcz we are going to make it responsive and for that we have to change them for different screens
             const CustomText(shadows: [
              Shadow(
                blurRadius: 40,
                color: Colors.blue,
              )
             ], text: "Join Room", fontSize: 70),
             SizedBox(height: Size.height*0.08,),
             CustomTextField(controller: _nameController, hintText: 'Enter your NickName'),
             SizedBox(height: Size.height*0.03,),
             CustomTextField(controller: _roomController, hintText: 'Enter your TeamCode'),
             SizedBox(height: Size.height*0.05,),
             CustomButton(onTap: () {}, text: "Join")
            ],
          ),
        ),
      ),
    );
  }
}