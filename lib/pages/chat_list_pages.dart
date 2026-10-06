import 'package:aula01/domain/conversa.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  List<Conversa> conversas = [
    Conversa(
      contato: 'Ewerton Costa',
      ultimaMsg: "Não Vou Reprová-los",
      hora:'16:20', naoLidas: 1),
      Conversa(
      contato: 'Warlles Machado',
      ultimaMsg: "Não Vai Escapar Ninguém",
      hora:'16:30', naoLidas: 10)
  ];
  ChatListPage({super.key});
}

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('conversas')),
      body: ListView.builder(
        itemCount: conversas.lenght,
        itemBuilder: (BuildContext context,int i)  { 
          Conversa conversa = conversas[i];
          return  ListTile(
            title: Text('Conversa.contato'),
            subtitle: Text('Conversa.ultimaMsg'),
            leading: CircleAvatar(
              child: Text('JE'),
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white60,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(conversa.hora),
                Badge(label: Text('${conversa.naoLidas}'),),
              ],
            ),
          ); }
          ),
        
      );
    
  }

