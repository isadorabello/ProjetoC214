import 'package:flutter/material.dart';
import 'package:projeto_c214/controller/tmb.dart';

import '../controller/menu.dart';

class TMBPage extends StatefulWidget {
  const TMBPage({Key? key}) : super(key: key);

  @override
  State<TMBPage> createState() => _TMBPageState();
}

class _TMBPageState extends State<TMBPage> {
  int resultado = 0;
  TMB tmb = TMB();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMB'),
      ),
      drawer: Menu(),
      body: SizedBox(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.00),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('TMB: ', style: TextStyle(fontSize: 15)),
                    const SizedBox(
                      width: 15,
                    ),
                    Text("$resultado", style: const TextStyle(fontSize: 15)),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  onChanged: (text) {
                    tmb.altura = double.parse(text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: 'Entre com a sua altura',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  onChanged: (text) {
                    tmb.peso = double.parse(text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: 'Entre com a seu peso',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  onChanged: (text) {
                    tmb.idade = int.parse(text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: 'Entre com a sua idade',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Calcular'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
