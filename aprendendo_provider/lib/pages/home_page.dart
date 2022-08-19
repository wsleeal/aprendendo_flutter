import 'package:aprendendo_provider/components/pessoa_item.dart';
import 'package:aprendendo_provider/models/pessoa_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Consume é utlizado para cosumir o [ChangeModifierProvider]
    // dentro de um widget
    return Consumer<PessoaList>(
      builder: (context, pessoas, _) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: pessoas.lista.length,
            // [ChangeNotifierProvider.value] utilizado para instancia valorios elementos
            // dentro de um builder.
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: pessoas.lista[i],
              child: const PessoaItem(),
            ),
          ),
        ),
      ),
    );
  }
}
