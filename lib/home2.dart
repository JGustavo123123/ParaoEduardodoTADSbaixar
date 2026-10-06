import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Minha Aula'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Text('Aula de Hoje!',style: TextStyle(
                fontSize: 18
              ),),
              Text('Widgets e composição!',style: TextStyle(
                fontSize: 16
              )),
              Text('Aprendendo a construir interfaces com o Flutter'),
              ElevatedButton(onPressed: () {}, child: Text('Começar aula')),
            ],
          )
        ),
        Row(
          children: [
            Card(
              child: SizedBox(
                height: 120,
                width: 120,
                height:15,
                
              ),
            ),
          ],
          children: [
            SizedBox()
            Card(
              child: Column(
                children: [Icon(Icons.book),
                Text('Aulas'),
                Text('12'),
                ],
              ),
            ),
          ],
          
        ),  
      ),
    );
  
  }
}