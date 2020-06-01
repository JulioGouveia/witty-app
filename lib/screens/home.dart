import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:witty/components/favoritos.dart';

import 'package:witty/components/lista_servicos.dart';
import 'package:witty/components/localizacao_atual.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Witty"),
      ),
      body: Column(
        children: <Widget>[
          LocalizacaoAtual(),
          ListaServicos(),
          ListaFavoritos(),
          MelhoresRegiao()
        ],
      ),
    );
  }
}

class MelhoresRegiao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(""),
                  ),
                  title: Text("Nome do Profissinal"),
                  subtitle: RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(Icons.star)
                        )
                      ]
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

