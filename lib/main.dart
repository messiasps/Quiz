import 'package:flutter/material.dart';
import 'package:quiz/teste.dart';
import 'quiz.dart';
import 'homepage.dart';
import 'resultado.dart';

/*
Para que eu possa usar o Theme em todo aplicativo, devo usar o scafold e não 
material desgner, pois se eu usacar assim: 
MaterialApp(
  home: Scalfold(

  ),
)
codigo acima é errado usar caso eu deseje usar o theme, forma certa seria assim:

Scalfold(

);

*/
class Palette {
  static const MaterialColor temaCopa = const MaterialColor(
    0xff0a0e21,
    const <int, Color>{
      50: const Color(0xffce5641), //10%
      100: const Color(0xffb74c3a), //20%
      200: const Color(0xffa04332), //30%
      300: const Color(0xff89392b), //40%
      400: const Color(0xff733024), //50%
      500: const Color(0xff5c261d), //60%
      600: const Color(0xff451c16), //70%
      700: const Color(0xff2e130e), //80%
      800: const Color(0xff170907), //90%
      900: const Color(0xff000000), //100%
    },
  );
}

void main() => runApp(MyApp());

const Color temaCopa = Color(0xff0a0e21);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Palette.temaCopa,
        fontFamily: 'OpenSans-Bold',
        scaffoldBackgroundColor: Color(0xffffdf00),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff009c3b)),
      ),
      initialRoute: '/', //rota inicial
      routes: {
        //lista de rotas
        '/': (context) => MyHomePage(),
        'Quiz': (context) => Quiz(),
        Resultado.routeName: (context) => Resultado(),
      },
    );
  }
}
