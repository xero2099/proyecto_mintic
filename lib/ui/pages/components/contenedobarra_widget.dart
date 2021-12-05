import 'package:flutter/material.dart';

class ContenedobarraWidget extends StatefulWidget {
  const ContenedobarraWidget({Key key}) : super(key: key);

  @override
  _ContenedobarraWidgetState createState() => _ContenedobarraWidgetState();
}

class _ContenedobarraWidgetState extends State<ContenedobarraWidget> {
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
      ),
    );
  }
}
