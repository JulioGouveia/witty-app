import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

  final _cinzinha = Color.fromRGBO(224, 224, 224, 50.0);
  final _cinza = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 80.0,16.0,0.0),
      height: 50.0,
      decoration: BoxDecoration(
        color: _cinzinha,
        borderRadius:  BorderRadius.circular(32),
      ),
      child: TextField(
        onTap: () {

        },
        style: TextStyle(
          height: 1.8,
        ),
        cursorColor: _cinza,
        decoration: InputDecoration(
          hintText: "Endereço e número",
          prefixIcon: Icon(Icons.search, color: _cinza),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15.0),
        ),
      ),
    );
  }
}
