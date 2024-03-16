import 'package:flutter/material.dart';
import 'package:remove_diacritic/remove_diacritic.dart';

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
    var numeros_iguais = false;

    int compara_numeros(a, b) {
      if (a == b) {
        numeros_iguais = true;
        return a + b;
      } else {
        return a * b;
      }
    }

    var resultado = compara_numeros(3, 2);

    if (numeros_iguais) {
      return "Os números eram iguais, portanto você fez uma soma, o resultado é: " +
          resultado.toString();
    } else {
      return "Os números eram diferente, portanto você fez uma multiplicação, o resultado é: " +
          resultado.toString();
    }
  }

  String desafio6() {
    return '';
  }

  String desafio7() {
    int salario_min = 1412;
    double salario_usuario = 3690.50;

    double compara_salario(usuario, minimo) {
      return usuario / minimo;
    }

    var resultado_formatado =
        compara_salario(salario_usuario, salario_min).toStringAsFixed(2);

    return "Com base em um salário mínimo de R\$ ${salario_min}, um usuário que recebe R\$ ${salario_usuario} logo ele recebe ${resultado_formatado} salários mínimos";
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

  String normalize(String str) {
    str = removeDiacritics(str);
    str = str.replaceAll(" ", '');
    str = str.toLowerCase();
    str = str.replaceAll(RegExp(r'[^a-z]'), '');
    return str;
  }

  bool is_even(String str) {
    if (str.length % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }

  bool is_palindrome(String str) {
    str = normalize(str);
    int last_index = str.length - 1;

    if (is_even(str)) {
      for (var i = 0; i < str.length / 2; i++) {
        if (str[i] != str[last_index]) {
          return false;
        } else {
          last_index--;
        }
      }

      return true;
    } else {
      for (var i = 0; i < str.length ~/ 2; i++) {
        if (str[i] != str[last_index]) {
          return false;
        } else {
          last_index--;
        }
      }

      return true;
    }
  }

  String desafio16() {
    var tests = [
      'Ana',
      'ABBA',
      'Anotaram a data da maratona',
      'Anotaram a data 20/12 da maratona',
      'Caneco',
      'Xucrinho',
      'A Rita sobre vovô verbos atira',
      'Uma frase',
      'Se hidrate',
    ];

    List<String> resultados = [];

    for (var i = 0; i < tests.length; i++) {
      String teste = "";
      bool isPalindrome = is_palindrome(tests[i]);

      if (isPalindrome) {
        teste = "${tests[i]} é um palindromo ";
      } else {
        teste = "${tests[i]} não é um palindromo ";
      }
      resultados.add(teste);
    }
    return resultados.toString();
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
