import 'package:flutter/material.dart';
 class  ChatListPage extends StatelessWidget{
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('conversas')),
      body: ListView(
        children: [
          ListTile(
            title: Text('José Eduardo'),
            subtitle: Text('Aula maravilhosa!'),
            leading: CircleAvatar(
              child: Text('JE'), 
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white60,
            ),
            trailing: Column(children: [Text('17:00'),Text('1)')])
        ],
      ),
      );
  }
  }
 