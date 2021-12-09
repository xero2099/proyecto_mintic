import 'package:get/get.dart';
import 'package:proyecto_mintic/ui/pages/filtro/filtro_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({Key key}) : super(key: key);

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  TextEditingController textController1;
  bool checkboxListTileValue;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
  }

  @override
  bool isEmail(String em) {
    String p =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$";
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(em);
  }

  void errorFormatos() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("El correo no tiene el formato requerido"),
            //buttons?
            actions: <Widget>[
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                }, //closes popup
              ),
            ],
          );
        });
  }

  void errorFormatos3() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("Todos los campos son requeridos"),
            //buttons?
            actions: <Widget>[
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                }, //closes popup
              ),
            ],
          );
        });
  }

  void errorFormatos2() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("La contraseña y su confirmacion no son la misma"),
            //buttons?
            actions: <Widget>[
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                }, //closes popup
              ),
            ],
          );
        });
  }

  void errorFormatos4() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("El nombre y usuario son requeridos"),
            //buttons?
            actions: <Widget>[
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                }, //closes popup
              ),
            ],
          );
        });
  }

  void errorCheckBox() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("Por favor acepte los terminos y condiciones"),
            //buttons?
            actions: <Widget>[
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                }, //closes popup
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          ///child: Expanded(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.9, -0.95),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                      child: Image.asset(
                        'assets/images/Logo_2.png',
                        width: 150,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.09, -0.90),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 60),
                      child: Container(
                        width: 330,
                        height: 650,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.45, -0.2),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.56, 0.62),
                                  child: Text(
                                    'Acepto',
                                    style: FlutterFlowTheme.subtitle2,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.21, 0.48),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 20),
                                    child: AutoSizeText(
                                      'Acepta el envio de correo de confirmacion \nde perfil, notificaciones de actualizacion y \ndemas comunicados para mejorar la aplicacion. acepta el tratamiento de su informacion para darle un mejor servicio',
                                      textAlign: TextAlign.justify,
                                      style:
                                          FlutterFlowTheme.bodyText2.override(
                                        fontFamily: 'NEXA',
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.65),
                                  child: CheckboxListTile(
                                    value: checkboxListTileValue ??= false,
                                    onChanged: (newValue) => setState(
                                        () => checkboxListTileValue = newValue),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: true,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.04, -0.38),
                                  child: Container(
                                    width: 300,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC9C6C6),
                                      borderRadius: BorderRadius.circular(36),
                                    ),
                                    child: TextFormField(
                                      controller: textController1,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 13),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'NEXA',
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (val) {
                                        if (val.isEmpty) {
                                          return 'El campo es requerido';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.8, -0.48),
                                  child: Text(
                                    'CORREO',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'NEXA',
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.8, -0.74),
                                  child: Text(
                                    'USUARIO',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'NEXA',
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                                //BOTON REGISTRO
                                Align(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 480, 3, 0),
                                    child: Container(
                                      child: Stack(children: [
                                        Align(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 1, 0, 0),
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Align(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    child: Image.asset(
                                                      'assets/images/Boton_.png',
                                                      height: 35,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          child: SizedBox(
                                            width: 230,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(1, 8, 2, 2),
                                              child: TextButton(
                                                key: Key('register2Submit'),
                                                style: TextButton.styleFrom(
                                                  padding:
                                                      const EdgeInsets.all(-8),
                                                  primary: Color(0xFFFABAFA),
                                                ),
                                                onPressed: () {
                                                  if (textController4.text.isEmpty &&
                                                      textController3
                                                          .text.isEmpty &&
                                                      textController1
                                                          .text.isEmpty &&
                                                      textController2
                                                          .text.isEmpty &&
                                                      textController5
                                                          .text.isEmpty) {
                                                    return errorFormatos3();
                                                  } else if (textController4
                                                          .text.isEmpty ||
                                                      textController3
                                                          .text.isEmpty ||
                                                      textController1
                                                          .text.isEmpty ||
                                                      textController2
                                                          .text.isEmpty ||
                                                      textController5
                                                          .text.isEmpty) {
                                                    return errorFormatos3();
                                                  } else if (textController4
                                                          .text.isEmpty ||
                                                      textController3
                                                          .text.isEmpty) {
                                                    return errorFormatos4();
                                                  } else if (isEmail(
                                                          textController1
                                                              .text) ==
                                                      false) {
                                                    return errorFormatos();
                                                  } else if (textController2
                                                          .text !=
                                                      textController5.text) {
                                                    return errorFormatos2();
                                                  } else if (!checkboxListTileValue) {
                                                    return errorCheckBox();
                                                  } else {
                                                    Get.to(
                                                        () => FiltroWidget());
                                                  }
                                                },
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
                                                  child: Text(
                                                    'Registro',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'NEXA',
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                                //
                                Align(
                                  alignment: AlignmentDirectional(-0.8, 0.03),
                                  child: Text(
                                    ' CONFIRMAR CONTRASEÑA',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'NEXA',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.12, -0.12),
                                  child: Container(
                                    width: 300,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC9C6C6),
                                      borderRadius: BorderRadius.circular(36),
                                    ),
                                    child: TextFormField(
                                      controller: textController2,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 13),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'NEXA',
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                      textAlign: TextAlign.center,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      validator: (val) {
                                        if (val.isEmpty) {
                                          return 'El campo es requerido';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.8, -0.23),
                                  child: Text(
                                    'CONTRASEÑA',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'NEXA',
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.08, -0.64),
                                  child: Container(
                                    width: 300,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC9C6C6),
                                      borderRadius: BorderRadius.circular(36),
                                    ),
                                    child: TextFormField(
                                      controller: textController3,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 13),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'NEXA',
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                      textAlign: TextAlign.center,
                                      validator: (val) {
                                        if (val.isEmpty) {
                                          return 'El campo es requerido';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.06, -0.88),
                                  child: Container(
                                    width: 300,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC9C6C6),
                                      borderRadius: BorderRadius.circular(36),
                                    ),
                                    child: TextFormField(
                                      controller: textController4,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 13),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'NEXA',
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                      textAlign: TextAlign.center,
                                      validator: (val) {
                                        if (val.isEmpty) {
                                          return 'El campo es requerido';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.8, -0.97),
                                  child: Text(
                                    'NOMBRE',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'NEXA',
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.36, 0.15),
                                  child: Container(
                                    width: 300,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC9C6C6),
                                      borderRadius: BorderRadius.circular(36),
                                    ),
                                    child: TextFormField(
                                      controller: textController5,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 13),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'NEXA',
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                      textAlign: TextAlign.center,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      validator: (val) {
                                        if (val.isEmpty) {
                                          return 'El campo es requerido';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
