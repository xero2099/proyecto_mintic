import 'package:flutter/material.dart';

class CardState extends StatelessWidget {
  String titulo;
  Widget pathImagen;
  String estado;

  CardState({
    this.titulo,
    this.pathImagen,
    this.estado,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titulo),
      trailing: pathImagen,
      subtitle: Text(estado),
    );
  }
}
