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
      title: 'DartMode',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        buttonTheme: const ButtonThemeData(buttonColor: Colors.grey),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.grey[350]),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DartMode'),
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
    int a = 26;
    int b = 27;

    if (a > b) {
      return 'O maior valor é: $a';
    } else if (b > a) {
      return 'O maior valor é: $b';
    } else {
      return 'Os valores são iguais: $a';
    }
  }

  String desafio2() {
    int a = 14;
    int b = 14;
    int c = 28;

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
    int a = 10;
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

    var resultado = compara_numeros(3, 3);

    if (numeros_iguais) {
      return "Os números eram iguais, portanto você fez uma soma, o resultado é: " +
          resultado.toString();
    } else {
      return "Os números eram diferente, portanto você fez uma multiplicação, o resultado é: " +
          resultado.toString();
    }
  }

  String desafio6() {
    int numero = 7;
    int antecessor = numero - 1;
    int sucessor = numero + 1;
    String resultado =
        ("O antecessor de $numero é $antecessor e o sucessor é $sucessor");

    return resultado;
  }

  String desafio7() {
    int salario_min = 1412;
    double salario_usuario = 2824.00;

    double compara_salario(usuario, minimo) {
      return usuario / minimo;
    }

    var resultado_formatado =
        compara_salario(salario_usuario, salario_min).toStringAsFixed(2);

    return "Com base em um salário mínimo de R\$ ${salario_min}, um usuário que recebe R\$ ${salario_usuario} logo ele recebe ${resultado_formatado} salários mínimos";
  }

  String desafio8() {
    List<int> valores = [5, -6, 1];
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
    List listaDeNotas = [80, 70, 60, 75, 70, 95, 100];

    num totalNota = 0;

    for (num nota in listaDeNotas) {
      totalNota += nota;
    }

    num media = totalNota / listaDeNotas.length;

    String resultado = '';

    if (media >= 70.0) {
      resultado = 'aprovado';
    } else {
      resultado = 'reprovado';
    }

    return 'Media $media, aluno foi $resultado';
  }

  String desafio10() {
    String nome = 'Wilmar';
    int idade = 18;
    if (idade >= 18) {
      return '$nome é maior de idade';
    } else {
      return '$nome é menor de idade';
    }
  }

  String desafio11() {
    int numero = 5;
    var tabuada = [];

    for (int i = 1; i <= 10; i++) {
      tabuada.add(numero * i);
    }
    String resultado = "A tabuada de $numero é: \n $tabuada";

    return resultado;
  }

  String desafio12() {
    List<int> numeros = [1, 2, 4];
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
    List<int> numeros = [20, 100, 5, -23, 12, 8, 15, 10, 7, 18];
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
    int limite = -10;
    List<int> lista = [];

    if (limite > 0) {
      for (int i = 0; i <= limite;) {
        lista.add(i++);
      }
    } else if (limite < 0) {
      for (int i = 0; i >= limite;) {
        lista.add(i--);
      }
      lista = lista.reversed.toList();
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
    var tests = ['baba', 'oi', 'reviver'];

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

    if (numeroTeste == 1) {
      return 'É número primo';
    }

    List<int> listaDeDivisores =
        List.generate(numeroTeste - 1, (index) => index + 2);

    int divisoesInteiras = 0;

    for (int numero in listaDeDivisores) {
      if (numeroTeste % numero == 0) {
        divisoesInteiras++;
      }
    }

    if (divisoesInteiras == 1) {
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
    List<String> palavras = [
      "foR",
      "scream",
      "CaRs",
      "raTo",
      "PoTatos",
      "racs",
      "roF",
      "creams",
      "scar",
      "Tora",
      "TatosPo",
      "TosTaPo"
    ];
    // Mapa para armazenar os grupos de anagramas, onde a chave é a representação ordenada dos caracteres
    // e o valor é uma lista de palavras que têm os mesmos caracteres quando normalizadas dessa maneira
    Map<String, List<String>> grupos = {};

    // Função interna para verificar se duas palavras são anagramas uma da outra
    bool saoAnagramas(String palavra1, String palavra2) {
      List<String> sorted1 = palavra1.toLowerCase().split('')..sort();
      List<String> sorted2 = palavra2.toLowerCase().split('')..sort();
      return sorted1.join() == sorted2.join();
    }

    // Itera sobre cada palavra na lista de palavras
    for (String palavra in palavras) {
      bool adicionou = false;
      // Verifica se a palavra pertence a algum grupo existente
      for (String chave in grupos.keys) {
        if (saoAnagramas(chave, palavra)) {
          // Se a palavra for um anagrama do grupo existente
          grupos[chave]!
              .add(palavra); // Adiciona a palavra ao grupo correspondente
          adicionou = true; // Define a flag de adição como verdadeira
          break; // Sai do loop interno, já que a palavra foi adicionada ao grupo
        }
      }
      // Se a palavra não pertencer a nenhum grupo existente, cria um novo grupo para ela
      if (adicionou == false) {
        grupos[palavra] = [palavra];
      }
    }

    // Retorna apenas os valores (grupos) do mapa como uma lista
    return "Grupos de Anagramas: ${grupos.values.toList().toString()}";
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

  String _d19listaStrings() {
    List<String> lista = [
      'foR',
      'scream',
      'CaRs',
      'poTatos',
      'racs',
      'creams',
      'scar',
      'four'
    ];

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
    var resultado = novaLista.map((sublist) => sublist.join('.')).join(', ');

    return resultado.toString();
  }

  List<String> listItens = [
    'desafio1',
    'desafio2',
    'desafio3',
    'desafio4',
    'desafio5',
    'desafio6',
    'desafio7',
    'desafio8',
    'desafio9',
    'desafio10',
    'desafio11',
    'desafio12',
    'desafio13',
    'desafio14',
    'desafio15',
    'desafio16',
    'desafio17',
    'desafio18',
    'desafio19',
    'desafio19v2',
  ];
  String selectedFunction = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 150),
              DropdownButton(
                hint: const Text('Selecione o desafio'),
                value: selectedFunction == '' ? null : selectedFunction,
                items: listItens
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {
                  resultado = '';
                  selectedFunction = value ?? '';
                  setState(() {});
                },
              ),
              const SizedBox(height: 150),
              Column(
                children: [
                  const Text(
                    'Resultado:',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      resultado,
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Aqui vai chamar função
          switch (selectedFunction) {
            case 'desafio1':
              resultado = desafio1();
              break;

            case 'desafio2':
              resultado = desafio2();
              break;

            case 'desafio3':
              resultado = desafio3();
              break;

            case 'desafio4':
              resultado = desafio4();
              break;

            case 'desafio5':
              resultado = desafio5();
              break;

            case 'desafio6':
              resultado = desafio6();
              break;
            case 'desafio7':
              resultado = desafio7();
              break;
            case 'desafio8':
              resultado = desafio8();
              break;
            case 'desafio9':
              resultado = desafio9();
              break;
            case 'desafio10':
              resultado = desafio10();
              break;
            case 'desafio11':
              resultado = desafio11();
              break;
            case 'desafio12':
              resultado = desafio12();
              break;
            case 'desafio13':
              resultado = desafio13();
              break;
            case 'desafio14':
              resultado = desafio14();
              break;
            case 'desafio15':
              resultado = desafio15();
              break;
            case 'desafio16':
              resultado = desafio16();
              break;
            case 'desafio17':
              resultado = desafio17();
              break;
            case 'desafio18':
              resultado = desafio18();
              break;
            case 'desafio19':
              resultado = desafio19();
              break;

            case 'desafio19v2':
              resultado = _d19listaStrings();
              break;
          }

          setState(() {});
        },
        tooltip: 'Incrementar',
        child: const Icon(Icons.add_circle_sharp),
      ),
    );
  }
}
