import 'package:aula01/domain/conversa.dart';
import 'package:aula01/infra/conversa_repository.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  // Instanciando o repositório. Em projetos maiores, usaria Injeção de Dependência (ex: get_it)
  final ConversaRepository repo = ConversaRepository();

  ChatListPage({super.key}); 

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('conversas')),
    body: ListView.builder(
      itemCount: repo.conversas.length,
      itemBuilder: (BuildContext context, int i) {
        Conversa conversa = repo.conversas[i];
        return ListTile(
          title: Text(conversa.contato),
          subtitle: Text(conversa.ultimaMsg),
          leading: CircleAvatar(
            child: Text('JE'),
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white60,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(conversa.hora),
              Badge(label: Text('${conversa.naoLidas}')),
              SizedBox(),
            ],
          ),
        );
      },
    ),
  );
}
} 