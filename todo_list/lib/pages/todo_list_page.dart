import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Preço',
              hintText: 'exemplo@exemplo.com',
              //border: OutlineInputBorder(),
              errorText: null,
              prefixText: 'R\$',
              suffixText: 'cm',
              labelStyle: TextStyle(
                fontSize: 20,
              )
            ),
            //obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
