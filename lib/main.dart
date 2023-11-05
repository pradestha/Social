//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:social/authentication/login_or_register.dart/auth.dart';
import 'package:social/pages/splash_screen.dart';
//import 'package:firebase_core/firebase_core.dart';
           
//Future
 
void main() //async 
{
  //WidgetsFlutterBinding.ensureInitialized();
  // if(kIsWeb){
  //   await Firebase.initializeApp(options: FirebaseOptions(apiKey:"AIzaSyCJwpZ77U0U3P3NMVLVFxbq4_aV_s0Yzx8" , appId: "1:160494134603:web:4fc2188d26f76f693534ce", messagingSenderId: "160494134603", projectId: "social-4a0ab"));
  // }
 // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(), //Splashscreen(),
    );
  }
}