// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:social/authentication/login_or_register.dart/login_or_register.dart';

// import '../../pages/homepage.dart';

// class AuthPage extends StatefulWidget {
//   const AuthPage({super.key});

//   @override
//   State<AuthPage> createState() => _AuthPageState();
// }

// class _AuthPageState extends State<AuthPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot){
//           //user is logged in
//           if(snapshot.hasData){
//             return const HomePage();
//           }
//           //user is not logged in
//           else{
//             return const LoginOrRegister();
//           }
//         },
//       ),
//     );
//   }
// }