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
    return '';
  }

  void _desafio10(String nome, int idade) {
    setState(() {
      if (idade >= 18) {
        resultado = '$nome é maior de idade';
      } else {
        resultado = '$nome é menor de idade';
      }
    });
  }

  String desafio11() {
    return '';
  }

  void _desafio12(List<int> numeros) {
    setState(() {
      for (int i = 0; i < numeros.length; i++) {
        numeros[i] = numeros[i] * numeros[i];
      }
      resultado = numeros.join(',');
    });
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
    return '';
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
          //_desafio10('Wilmar', 50);
          //_desafio12([1, 2, 3]);
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
        },
        tooltip: 'Incrementar',
        child: const Icon(Icons.add_circle_sharp),
      ),
    );
  }
}
