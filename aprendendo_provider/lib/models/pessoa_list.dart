import 'dart:collection';
import 'package:aprendendo_provider/data/dummy_data.dart';
import 'package:aprendendo_provider/models/pessoa.dart';
import 'package:flutter/material.dart';

class PessoaList with ChangeNotifier {
  final List<Pessoa> _lista = dummyPessoas;

  List<Pessoa> get lista => UnmodifiableListView(_lista);

  void delete(Pessoa pessoa) {
    _lista.remove(pessoa);
    debugPrint(lista.toString());
    notifyListeners();
  }
}
