import 'package:flutter/material.dart';
import 'package:quiz/quizDados.dart';
import 'package:quiz/resultado.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1; //índice que percorre a lista
  int acertos = 0;
  int erros = 0;

  void respondeu(int respostaNumero) {
    setState(() {
      if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
        print('acertou');
        acertos++;
      } else {
        print('errou');
        erros++;
      }

      print('Acertos totais: $acertos erros totais: $erros');

      if (perguntaNumero == 10) {
        print('Quiz terminou!');
        Navigator.pushNamed(
          context,
          'Resultado',
          arguments: Argumentos(acertos),
        );
      } else {
        perguntaNumero++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        centerTitle: true, 
        automaticallyImplyLeading: false, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'Pergunta $perguntaNumero de 10',
                style: const TextStyle(
                  fontSize: 20,
                  ),
              ),
            ),
            Text(quiz[perguntaNumero - 1]['pergunta'],
                style: const TextStyle(fontSize: 20)),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  respondeu(1);
                },
                child: Text(quiz[perguntaNumero - 1]['respostas'][0],
                    style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  respondeu(2);
                },
                child: Text(
                  quiz[perguntaNumero - 1]['respostas'][1],
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  respondeu(3);
                },
                child: Text(
                  quiz[perguntaNumero - 1]['respostas'][2],
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  respondeu(4);
                },
                child: Text(
                  quiz[perguntaNumero - 1]['respostas'][3],
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
