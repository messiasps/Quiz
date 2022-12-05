import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botões'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {}, 
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )
                  ),
                  overlayColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                      if(states.contains(MaterialState.pressed))
                        return Colors.red;
                      return null; 
                    }),
                ),
                child: Text('Botão'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
