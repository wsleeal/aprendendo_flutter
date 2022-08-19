import 'package:aprendendo_provider/models/pessoa_list.dart';
import 'package:aprendendo_provider/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Quando um classe modelo é alterada e é acionado o metodo [notifyListeners]
    // o widget [ChangeNotifierProvider] transforma ele em widget reativo.
    return ChangeNotifierProvider(
      // Instancia o modelo da classe [ChangeModifier]
      create: (context) => PessoaList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(title: 'Aprendendo Provider'),
      ),
    );
  }
}
