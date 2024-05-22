import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home_page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/Peach.jpg'),
        ),
      ),
    );

    const welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bem vinda \n Princesa Peach',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );

    const lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Personalidade:',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 214, 157, 170),
          Color(0xFFde718f),
        ]),
      ),
      child: const Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Banco de Dados SMB'),
        backgroundColor: const Color(0xFFf7da22),
      ),
      body: body,
    );
  }
}
