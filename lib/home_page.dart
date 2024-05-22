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
        'Princesa Peach',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );

    const lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Monarca do Reino dos Cogumelos e uma figura central na série de jogos Mario da Nintendo. Conhecida por sua gentileza, beleza e habilidade de liderança, Peach frequentemente se torna alvo de sequestros pelo vilão Bowser, sendo resgatada por Mario. Além de aparecer em muitos jogos de plataforma, Peach também participa de vários spin-offs, como jogos de corrida, esportes e festas.',
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          child: AppBar(
            title: const Text(
              'Banco de Dados SMB',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: const Color(0xFFf7da22),
          ),
        ),
      ),
      body: body,
    );
  }
}
