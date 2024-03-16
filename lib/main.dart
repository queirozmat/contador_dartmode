import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        buttonTheme: const ButtonThemeData(buttonColor: Colors.grey),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.grey[350]),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Contador - Dartmode'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String resultado = '';

  //Parametros talvez vão ser implementados
  String desafio1() {
    //Conteudo da função

    return ''; //Retorne sempre string
  }

  String desafio2() {
    return '';
  }

  String desafio3() {
    return '';
  }

  String desafio4() {
    return '';
  }

  String desafio5() {
    return '';
  }

  String desafio6() {
    return '';
  }

  String desafio7() {
    return '';
  }

  String desafio8() {
    return '';
  }

  String desafio9() {
    List listaDeNotas = [80, 70, 60, 75, 40];

    num totalNota = 0;

    for (num nota in listaDeNotas) {
      totalNota += nota;
    }

    num media = totalNota / listaDeNotas.length;

    String resultado = '';

    if (media >= 7.0) {
      resultado = 'aprovado';
    } else {
      resultado = 'reprovado';
    }

    return 'Media $media, aluno foi $resultado';
  }

  String desafio10() {
    return '';
  }

  String desafio11() {
    return '';
  }

  String desafio12() {
    return '';
  }

  String desafio13() {
    return '';
  }

  String desafio14() {
    return '';
  }

  String desafio15() {
    return '';
  }

  String desafio16() {
    return '';
  }

  String desafio17() {
    return '';
  }

  String desafio18() {
    String palavra = 'eu';
    String frase =
        'Eu posso posso eu eu tudo o mais que eu quiser Eu, eu, eu Eu.';

    int quantidade = 0;

    List listaDePalavras = frase.split(' ');

    for (String palavraLista in listaDePalavras) {
      palavraLista = palavraLista.replaceAll(',', '');
      palavraLista = palavraLista.replaceAll('.', '');

      if (palavraLista.toLowerCase() == palavra.toLowerCase()) {
        quantidade += 1;
      }
    }

    return quantidade.toString();
  }

  String desafio19() {
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Resultado:',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 17),
            ),
            Text(
              resultado,
              style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 40),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Aqui vai chamar função
        },
        tooltip: 'Incrementar',
        child: const Icon(Icons.add_circle_sharp),
      ),
    );
  }
}
