import 'package:flutter/widgets.dart';

class StateModel {
  String titulo;
  Widget pathImagen;
  String estado;

  StateModel({
    this.titulo,
    this.pathImagen,
    this.estado,
  });

  factory StateModel.fromJson(Map<String, dynamic> map) {
    return StateModel(
      titulo: map['titulo'],
      pathImagen: map['pathImagen'],
      estado: map['estado'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'pathImagen': pathImagen,
      'estado': estado,
    };
  }
}
