import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController todoController = TextEditingController(); //controlador que irá receber o que foi digitado quando apertar o botão +

  List<String> todos = []; //lista que irá salvar as tarefas adicionadas

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
                      controller: todoController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa',
                        hintText: 'Ex. Estudar Flutter',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      String text = todoController.text; //faz leitura do texto que foi digitado
                      setState(() { //adiciona as tarefas no lisview
                        todos.add(text);
                      });
                      todoController.clear(); //limpa o campo de texto após adicionar uma nova tarefa
                    },
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
              Flexible( //não permite que a listview ultrapasse o tamanho maximo
                child: ListView(
                  shrinkWrap: true, //deixa o listview no maior tamanho possivel
                  children: [
                    for(String todo in todos) //para cada tarefa que está na lista
                    ListTile(
                      title: Text(todo), //apresenta a tarefa no listview
                      onTap: (){
                        print('Tarefa: $todo');
                      },
                    ),
                  ],
                ),
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
