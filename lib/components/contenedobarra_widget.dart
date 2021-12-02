import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
