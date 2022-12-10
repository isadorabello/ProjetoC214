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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
