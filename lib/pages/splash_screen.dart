import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social/authentication/login_or_register.dart/login_or_register.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
 with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2,), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const LoginOrRegister(),
        ),
        );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual, 
      overlays: SystemUiOverlay.values,
       );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.deepPurple, Color.fromARGB(255, 173, 102, 185)],
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.pest_control_rodent_sharp,
          size: 80,
          color: Color.fromARGB(255, 232, 165, 244),
          ),
          SizedBox(height: 20,),
          Text('BeSosh!', style: TextStyle(
            color: Color.fromARGB(255, 241, 218, 245),
            fontSize: 32,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
          ),
        ],
        ),
      ),
    );
  }
}