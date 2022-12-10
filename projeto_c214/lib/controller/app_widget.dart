import 'package:flutter/material.dart';
import 'package:projeto_c214/view/tmb_page.dart';
import '../view/imc_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalculaSaúde',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/imc",
      routes: {
        "/imc": (context) => const IMCPage(),
        "/tmb": (context) => const TMBPage(),
      },
    );
  }
}
