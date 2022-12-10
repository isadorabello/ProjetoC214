import 'package:flutter/material.dart';

import '../controller/menu.dart';

class TMBPage extends StatefulWidget {
  const TMBPage({Key? key}) : super(key: key);

  @override
  State<TMBPage> createState() => _TMBPageState();
}

class _TMBPageState extends State<TMBPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMB'),
      ),
      drawer: Menu(),
    );
  }
}
