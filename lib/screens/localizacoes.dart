import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:witty/components/search_bar.dart';

class Localizacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          title: Text("Localização"),
          flexibleSpace: Column(
            children: <Widget>[
              SearchBar(),
              BuscaLocalizacaoAtual(),
            ],
          ),
        ),
      ),
      body: ListaLocalizacao(),
    );
  }
}

class BuscaLocalizacaoAtual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          width: 365,
          color: Theme.of(context).primaryColor,
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.bookmark),
            ),
            title: Text("Usar localização atual"),
            subtitle: Text("Parque Dom Pedro II, 1092 - apto. 23"),
          ),
        ),
      );
  }
}

class ListaLocalizacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
            Card(
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.home),
                ),
                title: Text("Casa"),
                subtitle: Text("Parque Dom Pedro II, 1092 - apto. 23"),

              ),
            ),
          ],
        ),
    );
  }
}




