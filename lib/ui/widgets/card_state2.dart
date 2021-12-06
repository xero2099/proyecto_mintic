import 'package:flutter/material.dart';

class CardState2 extends StatelessWidget {
  String titulo2;
  String pathImagen2;
  String estado2;

  CardState2({
    this.titulo2,
    this.pathImagen2,
    this.estado2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titulo2),
      trailing: Image.asset(pathImagen2),
      subtitle: Text(estado2),
    );
  }
}
