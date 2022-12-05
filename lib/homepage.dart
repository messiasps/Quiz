import 'package:flutter/material.dart';

//const Color temaCopa = Color(0xff0a0e21);
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image(image: AssetImage('assets/images/logo.png')),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Quiz');
              },
              child: Text(
                'Jogar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff009c3b), // background
                //   onPrimary: Colors.white, // foreground
                padding: EdgeInsets.all(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
