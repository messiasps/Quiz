import 'package:flutter/material.dart';

class Argumentos {
  int acertos = 0;

  Argumentos(this.acertos);
}

class Resultado extends StatelessWidget {
  static const routeName = 'Resultado'; //nome da rota

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quiz')),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Resultado', style: TextStyle(fontSize: 20)),
              Text(
                'Você acertou ${argumentos.acertos} de 10 perguntas!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //colocar uma rota de volta para o Quiz
                    // Navigator.pop(context);
                    Navigator.pushNamed(context, 'Quiz');
                  },
                  child: Text(
                    'Jogar Novamente',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
