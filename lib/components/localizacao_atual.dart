import 'package:flutter/material.dart';

import 'package:witty/screens/localizacoes.dart';

class LocalizacaoAtual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Localizacoes()));
        },
        child: Row(
          children: <Widget>[
            Text("Proximo a Parque do Pedro II",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }

}

