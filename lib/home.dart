import 'package:aula01/domain/conversa.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('olá') ),
      body : Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(conversa.hora),
          conversa.naoLidas > 0,  
          Badge(
            label: Text(
              '${conversa.naoLidas}'
              )
              )
        ]
      )
    );
  }
}