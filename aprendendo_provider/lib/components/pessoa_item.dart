import 'package:aprendendo_provider/models/pessoa.dart';
import 'package:aprendendo_provider/models/pessoa_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PessoaItem extends StatelessWidget {
  const PessoaItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Consume é utlizado para cosumir o [ChangeModifierProvider]
    // dentro de um widget
    return Consumer<Pessoa>(
      builder: (context, pessoa, _) => Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Row(children: [
          Text(pessoa.nome),
          const SizedBox(width: 10),
          Text(pessoa.sobrenome),
          const SizedBox(width: 10),
          Text(pessoa.idade.toString()),
          IconButton(
            onPressed: pessoa.increment,
            icon: const Icon(
              Icons.plus_one,
              color: Colors.blue,
            ),
          ),
          IconButton(
            // Acessa metodo [delete] atravez do context do [ChangeMododifierProvider]
            onPressed: () => context.read<PessoaList>().delete(pessoa),
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          )
        ]),
      ),
    );
  }
}
