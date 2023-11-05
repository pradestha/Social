import 'package:flutter/material.dart';
import 'package:social/pages/homepage.dart';

import '../components/buttons.dart';
import '../components/textfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controller 
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordtextController = TextEditingController();
  final nameTextController = TextEditingController();
  final bioTextController = TextEditingController();
  final genderTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 231, 231),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Column(children: [
               const SizedBox(height:40),
              //logo
              Icon(
                Icons.person,
                size: 75,
                ),
                const SizedBox(height:5),
          
                Text('Lets create an account for you', style: TextStyle(fontSize: 28,),),

                const SizedBox(height:10),

                //textfield
                MyTextField(
                  controller: nameTextController   ,
                  hintText: 'Your Name', 
                  obscureText: false, 
                  obscuretext: true,),
                
                const SizedBox(height:4),

                //textfield
                MyTextField(
                  controller: emailTextController   ,
                  hintText: 'Email', 
                  obscureText: false, 
                  obscuretext: true,),

                  const SizedBox(height:4),

                //textfield
                MyTextField(
                  controller: genderTextController   ,
                  hintText: 'Gender', 
                  obscureText: false, 
                  obscuretext: true,),

                  //const SizedBox(height:20),

                  const SizedBox(height:4),

                //textfield
                MyTextField(
                  controller: bioTextController   ,
                  hintText: 'Bio', 
                  obscureText: false, 
                  obscuretext: true,),
                const SizedBox(height:4),
                 //password
                 MyTextField(
                  controller: passwordTextController   ,
                  hintText: 'Password', 
                  obscureText: true, 
                  obscuretext: true,),

                  const SizedBox(height:4),

                  MyTextField(
                  controller: confirmPasswordtextController   ,
                  hintText: ' Confirm Password', 
                  obscureText: true, 
                  obscuretext: true,),

                  const SizedBox(height:4),

                  MyButton(
                     onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                       builder: (_) => const HomePage(),
                       ),
                      );
                    },
                     text: 'Sign Up',),
                  const SizedBox(height:20),

                  //go to register page
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?", style:TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                      SizedBox(width:4),
                      GestureDetector(
                        onTap: widget.onTap,
                         
                         child: const  Text("Login here", 
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                       ),
                      ), 
                    ),
                     
                    ],
                  ),

 
            ],),
          ),
        ),
      ),
    );
  }
}