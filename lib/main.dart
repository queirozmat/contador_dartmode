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
    int a = -5;
    String resultado = "";

    if (a % 2 == 0) {
      resultado = '$a é um número par, ';
    } else {
      resultado = '$a é um número é impar, ';
    }

    if (a > 0) {
      resultado += "o número é positivo.";
    }
    if (a < 0) {
      resultado += 'o número é negativo';
    }
    if (a == 0) {
      resultado += "o número é zero";
    }
    return resultado;
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
    return '';
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
    int limite = -3;
    List<int> lista = [];

    if (limite > 0) {
      for (int i = 0; i <= limite;) {
        lista.add(i++);
      }
    } else if (limite < 0) {
      for (int i = 0; i >= limite;) {
        lista.add(i--);
      }
    }

    return lista.toString();
  }

  String desafio16() {
    return '';
  }

  String desafio17() {
    return '';
  }

  String desafio18() {
    return '';
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
