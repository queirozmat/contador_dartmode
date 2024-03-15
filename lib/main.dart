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
    var number = 5;
    if (number < 0) {
      return ("Não existe fatorial de número negativo!");
    }
    var factorial = BigInt.one;

    for (var i = 1; i <= number; i++) {
      factorial *= BigInt.from(i);
    }
    resultado = ('Fatorial de $number: $factorial');
    return resultado;
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
    List<int> valores = [5, 6, 1];
    for (var i = 0; i < valores.length; i++) {
      for (var j = i + 1; j < valores.length; j++) {
        if (valores[i] < valores[j]) {
          var temp = valores[i];
          valores[i] = valores[j];
          valores[j] = temp;
        }
      }
    }
    resultado = 'Saída: ${valores.toString()}';
    return resultado;
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
    List<int> numeros = [20, 1, 5, 23, 12, 8, 15, 10, 7, 18];
    int min = numeros[0];
    int max = numeros[0];

    for (var numero in numeros) {
      if (numero < min) {
        min = numero;
      }
      if (numero > max) {
        max = numero;
      }
    }
    resultado = 'Menor número: $min. Maior número: $max';
    return resultado;
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
