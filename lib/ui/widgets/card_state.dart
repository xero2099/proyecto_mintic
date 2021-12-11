import 'package:flutter/material.dart';

class CardState extends StatelessWidget {
  String titulo;
  String pathImagen;
  String estado;

  CardState ({this.titulo, this.pathImagen, this.estado,});


  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(titulo),trailing: Image.asset(pathImagen),subtitle: Text(estado),);
  }
}