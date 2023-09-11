import 'package:flutter/material.dart';
import 'package:flutter_application_1/Responsive/responsive.dart';
import 'package:flutter_application_1/Widgets/custom_button.dart';
import 'package:flutter_application_1/Widgets/custom_text.dart';
import 'package:flutter_application_1/Widgets/custom_textField.dart';

class CreateRoom extends StatefulWidget {
  static String routeName = "/create-room";
  const CreateRoom({Key? key}) : super(key: key);

  @override
  State<CreateRoom> createState() => _CreateRoomState();

}


class _CreateRoomState extends State<CreateRoom> {

  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
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
             ], text: "Create Room", fontSize: 70),
             SizedBox(height: Size.height*0.08,),
             CustomTextField(controller: _nameController, hintText: 'Enter your Nickname'),
             SizedBox(height: Size.height*0.04,),
             CustomButton(onTap: () {}, text: "Create")
            ],
          ),
        ),
      ),
    );
  }
}