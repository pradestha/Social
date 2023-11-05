import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscuretext;
  const MyTextField({super.key, required this.controller, required this.hintText, required this.obscuretext, required obscureText});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller,
      obscureText: obscuretext,
      decoration:    InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white,),
        ),
        focusedBorder:  const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black,),  
        ),
        
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey,),
      ),
    );
  }
}