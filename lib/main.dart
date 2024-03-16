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
    int numero = 10;
    int antecessor = numero - 1;
    int sucessor = numero + 1;
    String resultado =("O antecessor é  de $numero é $antecessor e o sucessor é $sucessor");

    return resultado;
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

  String _desafio10() {
    String nome = 'Wilmar';
    int idade = 3;
    if (idade >= 18) {
      return '$nome é maior de idade';
    } else {
      return '$nome é menor de idade';
    }
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

  String _desafio12() {
    List<int> numeros = [1, 2, 3];
    for (int i = 0; i < numeros.length; i++) {
      numeros[i] = numeros[i] * numeros[i];
    }
    return numeros.join(',');
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

  bool _d19comparaMesmasLetras(String principal, String secundaria) {
    String letra = 'x';
    bool contem = true;
    if (principal.length != secundaria.length) {
      return false;
    }
    for (int i = 0; i < principal.length; i++) {
      letra = principal[i].toLowerCase();
      if (secundaria.toLowerCase().contains(letra)) {
        contem = true;
      } else {
        contem = false;
        break;
      }
    }
    return contem;
  }

  void _d19listaStrings(List<String> lista) {
    setState(() {
      List<List<String>> novaLista = [];
      List<String> copiaLista = [];
      List<bool> stringUsada = List.filled(lista.length, true);
      bool comparou = true;

      copiaLista = List.from(lista);
      for (int i = 0; i < lista.length; i++) {
        //
        if (stringUsada[i] == true) {
          novaLista.add([]);
          List<String> novaSubLista = novaLista.last;
          novaSubLista.add(lista[i]);
          stringUsada[i] = false;

          for (int j = 0; j < copiaLista.length; j++) {
            if (stringUsada[j] == true) {
              comparou = _d19comparaMesmasLetras(lista[i], copiaLista[j]);
              if (comparou) {
                novaSubLista.add(copiaLista[j]);
                stringUsada[j] = false;
              }
            }
          }
        }
      }
      resultado = novaLista.map((sublist) => sublist.join('.')).join(', ');
    });
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
          setState(() {
            //resultado = _desafio10();
            //resultado = _desafio12();
            /* _d19listaStrings([
            'foR',
            'scream',
            'CaRs',
            'poTatos',
            'racs',
            'creams',
            'scar',
            'four'
          ]); */
          });
        },
        tooltip: 'Incrementar',
        child: const Icon(Icons.add_circle_sharp),
      ),
    );
  }
}
