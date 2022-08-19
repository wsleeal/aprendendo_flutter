import 'package:flutter/material.dart';

class Pessoa with ChangeNotifier {
  String nome;
  String sobrenome;
  int idade;

  Pessoa({
    required this.nome,
    required this.sobrenome,
    required this.idade,
  });

  void increment() {
    idade++;
    debugPrint(idade.toString());
    notifyListeners();
  }
}
