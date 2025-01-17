import 'package:flutter/material.dart';

import 'calculadora.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora WEB',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(146, 243, 0, 239)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            color: const Color.fromARGB(255, 255, 3, 3),
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
               // color: const Color.fromARGB(255, 255, 7, 189),
               // child: const Text('Vamos Calcular?'),
              ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Primeiro Container dentro da Row
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        // padding: const EdgeInsets.all(16.0),
                        // color: const Color.fromARGB(148, 182, 74, 255),
                        // child: const Text('Primeira Coluna'),
                        ),
                  ),
                  // Segundo Container dentro da Row
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16.0),
                      // color: const Color.fromARGB(255, 255, 7, 189),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(71, 239, 143, 239),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                          color: const Color.fromARGB(252, 247, 244, 246),
                          width: 2.0,
                        ),
                          boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(202, 86, 85, 85),
                            offset: Offset(5.5, 5.5), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: const Calculadora(),
                    ),
                  ),
                  // Terceiro Container dentro da Row
                  Expanded(
                    child: Container(
                        // alignment: Alignment.center,
                        // padding: const EdgeInsets.all(16.0),
                        // color: const Color.fromARGB(169, 210, 84, 241), // para reativar as funcoes delete os '//'
                        // child: const Text('Terceira Coluna'),
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                // color: const Color.fromARGB(255, 255, 7, 189),
                child: const Text(
                  'Talento Tech - Almirante Tamandaré - Kettellenn M.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: const Color.fromARGB(255, 253, 253, 253),
        onPressed: () {},
        tooltip: 'Curtir',
        backgroundColor: const Color.fromARGB(59, 175, 3, 255),
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}


