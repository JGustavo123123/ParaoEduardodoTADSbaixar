// Caminho: C:\Users\Aluno\Documents\pdm\aula01\lib\lista.dart
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  // Correção 1: Uso de parênteses para os parâmetros do construtor
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Correção 2: AppBar é com letra maiúscula e Text precisa ser instanciado com uma string
      appBar: AppBar(title: const Text('Lista de Conversas')),
      // Adicionando um corpo (body) básico para a tela não ficar toda branca
      body: const Center(child: Text('Nenhuma conversa no momento.')),
    ); // Correção 3: Faltava fechar o return adequadamente
  }
}
