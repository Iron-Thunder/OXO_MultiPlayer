
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({Key? key, required this.onTap, required this.text }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [ 
          BoxShadow(
          color: Colors.blue,
          blurRadius: 4,
          spreadRadius: 0
        )
        ] 
      ),
      child: ElevatedButton(
        onPressed: onTap,
         child: Text(text, style: const TextStyle(fontSize: 16),),
          style: ElevatedButton.styleFrom(minimumSize: Size(Width, 50)
          ),
          ),
    );
  }
}