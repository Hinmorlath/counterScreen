import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 10,
        ),
        backgroundColor: Color.fromARGB(255, 56, 102, 49),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de taps:',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(90, 240, 30, 29),
              foregroundColor: const Color.fromARGB(230, 28, 159, 130),
              onPressed: () => setState(() => contador--),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(90, 240, 30, 29),
              foregroundColor: const Color.fromARGB(230, 28, 159, 130),
              onPressed: () => setState(() => contador = 0),
              child: const Icon(Icons.restart_alt),
            ),
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(90, 240, 30, 29),
              foregroundColor: const Color.fromARGB(230, 28, 159, 130),
              onPressed: () => setState(() => contador++),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ],
        ));
  }
}
