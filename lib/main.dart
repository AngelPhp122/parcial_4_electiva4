import 'package:flutter/material.dart';
import 'package:parcial_4_electiva4/app/ui/paginas/home/principal.dart';

void main() {
  runApp(const Parcial4());
}

class Parcial4 extends StatelessWidget {
  const Parcial4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MovilSV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PrincipalPagina(),
    );
  }
}