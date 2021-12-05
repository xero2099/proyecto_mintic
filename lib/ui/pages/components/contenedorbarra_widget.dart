import 'package:flutter/material.dart';

class ContenedorbarraWidget extends StatefulWidget {
  const ContenedorbarraWidget({Key key}) : super(key: key);

  @override
  _ContenedorbarraWidgetState createState() => _ContenedorbarraWidgetState();
}

class _ContenedorbarraWidgetState extends State<ContenedorbarraWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/Botton_Nav_Blanco.png',
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
