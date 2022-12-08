import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    //Especifica largura maxima possivel da tela para não ultrapassar
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa',
                        hintText: 'Ex. Estudar Flutter',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff00d7f3),
                        padding: const EdgeInsets.all(14)),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true, //deixa o listview no maior tamanho possivel
                children: [
                  ListTile(
                    title: Text('Tarefa1'),
                    subtitle: Text('20/11/2022'),
                    leading: Icon(Icons.save, size: 30),
                    onTap: (){
                      print('Tarefa 1');
                    },
                  ),
                  ListTile(
                    title: Text('Tarefa2'),
                    subtitle: Text('20/11/2022'),
                    leading: Icon(Icons.person, size: 30),
                    onTap: (){
                      print('Tarefa 2');
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Você possui 0 tarefas pendentes',
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff00d7f3),
                        padding: const EdgeInsets.all(14)),
                    child: Text('Limpar tudo'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
