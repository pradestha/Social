import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social/components/buttons.dart';
import 'package:social/components/textfield.dart';
import 'package:social/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  //
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller 
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  //sign user in
  void signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailTextController.text, 
      password: passwordTextController.text,
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 231, 231),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Column(children: [
               const SizedBox(height:50),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
                ),
                const SizedBox(height:10),
          
                const Text('Hello!', style: TextStyle(fontSize: 32,),),
                
                const SizedBox(height:20),

                //textfield
                MyTextField(
                  controller: emailTextController   ,
                  hintText: 'Email', 
                  obscureText: false, 
                  obscuretext: true,),

                  const SizedBox(height:20),

                  //password
                 MyTextField(
                  controller: passwordTextController   ,
                  hintText: 'Password', 
                  obscureText: true, 
                  obscuretext: true,),

                  const SizedBox(height:20),

                  MyButton( 
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                       builder: (_) => const HomePage(),
                       ),
                      );
                    },
                    text: 'Sign In',),
                  const SizedBox(height:20),

                  //go to register page
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not a member?", style:TextStyle(
                        color: Colors.grey,
                      ),),
                      const SizedBox(width:4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text("Register Now", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),),
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