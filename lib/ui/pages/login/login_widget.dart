import 'package:get/get.dart';
import 'package:proyecto_mintic/ui/pages/busqueda/busqueda_widget.dart';
import 'package:proyecto_mintic/ui/pages/inicio/inicio_widget.dart';
import 'package:proyecto_mintic/ui/pages/registro/registro_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  bool isEmail(String em) {
    String p =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$";
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(em);
  }

  void errorFormato() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("Formato de correo incorrecto"),
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

  void errorFormato2() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("Mínimo la contraseña debe tener 6 caracteres"),
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

  void errorFormato3() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("Los campos usuario y contraseña son requeridos"),
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

  void errorFormato4() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("El campo de usuario es requerido"),
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

  void errorFormato5() {
    showDialog(
        context: context,
        barrierDismissible:
            false, // disables popup to close if tapped outside popup (need a button to close)
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "ERROR",
            ),
            content: Text("El campo de la contraseña es requerido"),
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

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.07, -0.61),
              child: Image.asset(
                'assets/images/Logo_1.png',
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            ListView(
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.69, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 130, 0, 0),
                    child: Text(
                      'Usuario',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'NEXA',
                        color: Color(0xFFEAB8EC),
                        useGoogleFonts: false,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.64, 0.13),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 130, 0, 0),
                    child: Text(
                      'Contraseña',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'NEXA',
                        color: Color(0xFFEAB8EC),
                        useGoogleFonts: false,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(isEmail(textController1.text));
                    if (textController1.text.isEmpty &&
                        textController2.text.isEmpty) {
                      return errorFormato3();
                    } else if (textController1.text.isEmpty) {
                      return errorFormato4();
                    } else if (textController2.text.isEmpty) {
                      return errorFormato5();
                    } else if (isEmail(textController1.text) == false) {
                      return errorFormato();
                    } else if (textController2.text.length < 6) {
                      return errorFormato2();
                    } else {
                      Get.to(() => InicioWidget());
                    }
                  },
                  child: Align(
                    alignment: AlignmentDirectional(-0.03, 0.41),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                      child: Image.asset(
                        'assets/images/Boton_.png',
                        width: 230,
                        height: 35,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.01, 0.4),
                  child: Text(
                    'Login',
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'NEXA',
                      color: Color(0xFFFABAFA),
                      useGoogleFonts: false,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => RegistroWidget());
                  },
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.72),
                    child: Image.asset(
                      'assets/images/Boton_.png',
                      width: 230,
                      height: 35,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.5),
                  child: Text(
                    'Olvidaste Tu Contraseña?',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'NEXA',
                      color: Color(0xFFEAB8EC),
                      useGoogleFonts: false,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.02, 0.7),
                  child: Text(
                    'Regístrate ',
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'NEXA',
                      color: Color(0xFFFABAFA),
                      useGoogleFonts: false,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.06, 0.02),
                          child: Image.asset(
                            'assets/images/barra_2.png',
                            width: 300,
                            height: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // campo de texto usuario
                        Align(
                          alignment: AlignmentDirectional(0, 6),
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
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 13),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'NEXA',
                              fontSize: 22,
                              useGoogleFonts: false,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.01, 0.22),
                  child: Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0.22),
                            child: Image.asset(
                              'assets/images/barra_2.png',
                              width: 300,
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //campo de texto contraseña
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(60, 0, 18, 0),
                              child: TextFormField(
                                controller: textController2,
                                obscureText: !passwordVisibility,
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
                                          0, 3, 0, 0),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility =
                                          !passwordVisibility,
                                    ),
                                    child: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF757575),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'NEXA',
                                  fontSize: 22,
                                  useGoogleFonts: false,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
