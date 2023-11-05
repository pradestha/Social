import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text('BeSosh!'), 
    backgroundColor: Colors.black,// Correct way to set the title
    actions: [
      ElevatedButton(
          onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.black, // Button background color
          onPrimary: Colors.white,
          // Text color
        ),
          child: const Icon(
                Icons.person,
                size: 20,
                ),
          
      ),
    ],
  ),
  

  body: Container(
    padding: EdgeInsets.all(0),
    child:ElevatedButton(
      onPressed: (){},
       child:Row(
        children: [
          Icon(Icons.add),
          SizedBox(width:30),
          Icon(Icons.linked_camera),
          SizedBox(width:30),
          Icon(Icons.search),
        ],
       ),
        ),
  ),
);
}
}