import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('olá') ),
      body: Container(
        color: const Color.fromARGB(255, 76, 66, 156), 
      ),
      floatingActionButton: OutlinedButton(onPressed:(){}, child: Icon(Icons.add)),
    );
  }
}