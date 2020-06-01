
import 'package:flutter/material.dart';

class ListaFavoritos extends StatelessWidget {

  final String _avatar1 = "images/avatar1.png";
  final String _avatar2 = "images/avatar2.png";
  final String _avatar3 = "images/avatar3.png";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text("Favoritos",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
          height: 70,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _favoritoItem(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(_avatar1),
                ),
                title: "Maria Beauty Studio",
              ),
              _favoritoItem(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(_avatar2),
                ),
                title: "Alessandra Studio",
              ),
              _favoritoItem(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(_avatar3),
                ),
                title: "Angela Estetica",
              ),
              _favoritoItem(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(_avatar1),
                ),
                title: "Nome do profissinal",
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _favoritoItem extends StatelessWidget{

  final Widget leading;
  final  String title;

  _favoritoItem({this.leading, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Material(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
          color: Theme.of(context).cardColor,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(top:5),
              width: 300,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: leading,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 18.0
                        )
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}