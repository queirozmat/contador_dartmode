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
    int a = 15;
    int b = 8;

    if (a > b) {
      return 'O maior valor é: $a';
    } else if (b > a) {
      return 'O maior valor é: $b';
    } else {
      return 'Os valores são iguais: $a';
    }
  }

  String desafio2() {
    int a = 8;
    int b = 5;
    int c = 27;

    int soma = a + b;

    if (soma > c) {
      return 'A soma de a: $a e b: $b é $soma e é maior do que $c.';
    } else if (soma < c) {
      return 'A soma de a: $a e b: $b é $soma e é menor do que $c.';
    } else {
      return 'A soma de $a e $b é igual a $c.';
    }
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
    int numero = 10;
    int antecessor = numero - 1;
    int sucessor = numero + 1;
    String resultado =("O antecessor é  de $numero é $antecessor e o sucessor é $sucessor");

    return resultado;
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
    int numero = 10;
    var tabuada = [];

    for (int i = 1; i <= 10; i++) {
      tabuada.add(numero * i);
    }
    String resultado = "A tabuada de $numero é: \n $tabuada";

    return resultado;
  }

  String desafio12() {
    return '';
  }

  String desafio13() {
     List<int> numeros = [2, 5, 8, 10, 13, 17, 20, 22, 25, 30];

    int pares = 0;
    int impares = 0;

    for (int item in numeros) {
      if (item % 2 == 0) {
        pares = pares + 1;
      } else {
        impares++;
      }
    }
    return 'Quantidade de números pares: ${pares.toString()}\nQuantidade de números ímpares: ${impares.toString()}';

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
    int numeroTeste = 30;
  
  if(numeroTeste == 1) {return 'É número primo';}
  
  List<int> listaDeDivisores = List.generate(numeroTeste - 1,
                                             (index) => index + 2);
  
  int divisoesInteiras = 0;
  
  for(int numero in listaDeDivisores) {
    if (numeroTeste % numero == 0) {
        divisoesInteiras++;
     }
  }
  
  if(divisoesInteiras == 1) {
    return 'É número primo';
  } else {
    return 'Não é número primo';
  }

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
