import 'package:flutter/material.dart';
import 'package:witty/screens/lista_opcao_servico.dart';

import '../screens/localizacoes.dart';

class ListaServicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _futureItem("Unha", onClick: () => _showOpcaoServico(context)),
          _futureItem("Maquiagem", onClick: () => _showOpcaoServico(context)),
          _futureItem("Sombrancelha", onClick: () => _showOpcaoServico(context)),
          _futureItem("Massagem", onClick: () => _showOpcaoServico(context))
        ],
      ),
    );
  }


  void _showOpcaoServico(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (context) => OpcaoServico(),
    ));
  }
}

class _futureItem extends StatelessWidget {

  final String nome;
  final Function onClick;

  const _futureItem(this.nome,{@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Theme.of(context).primaryColor,
        elevation: 2,
        child: InkWell(
          onTap: () => onClick(),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            height: 100 ,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(nome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}