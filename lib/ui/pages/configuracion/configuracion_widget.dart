import 'package:get/get.dart';
import 'package:proyecto_mintic/controlador/image_controller.dart';
import 'package:proyecto_mintic/ui/pages/login/login_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class ConfiguracionWidget extends StatefulWidget {
  const ConfiguracionWidget({Key key}) : super(key: key);

  @override
  _ConfiguracionWidgetState createState() => _ConfiguracionWidgetState();
}

class _ConfiguracionWidgetState extends State<ConfiguracionWidget> {
  bool switchListTileValue1;
  bool switchListTileValue2;
  bool switchListTileValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Image_Control image = Get.find();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Obx(
                () => Image.asset(
                  image.imagen,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.15),
              child: SwitchListTile(
                value: switchListTileValue3 ??= false,
                onChanged: (newValue) => {
                  setState(() => switchListTileValue3 = newValue),
                  image.cambiarOscuro()
                },
                title: Text(
                  'Modo Oscuro',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'NEXA',
                    color: Colors.white,
                    useGoogleFonts: false,
                  ),
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: true,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.10),
              child: Text(
                'CONFIGURACIÓN',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'NEXA',
                  color: Colors.white,
                  useGoogleFonts: false,
                ),
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
            //BOTON CERRAR SESION
            Align(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 400, 0, 0),
                child: Container(
                  child: Stack(children: [
                    Align(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/Boton_.png',
                            width: 230,
                            height: 35,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      child: SizedBox(
                        width: 230,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(1, 8, 2, 2),
                          child: TextButton(
                            key: Key('logoutsubmit'),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(-8),
                              primary: Color(0xFFFABAFA),
                            ),
                            onPressed: () {
                              Get.to(() => LoginWidget());
                            },
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Text(
                                'Cerrar Sesion',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'NEXA',
                                  color: Color(0xFFFABAFA),
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
            Align(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 550, 0, 0),
                child: Container(
                  child: Stack(children: [
                    Align(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/Boton_.png',
                            width: 230,
                            height: 35,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      child: SizedBox(
                        width: 230,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(1, 8, 2, 2),
                          child: TextButton(
                            key: Key('locationsubmit'),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(-8),
                              primary: Color(0xFFFABAFA),
                            ),
                            onPressed: () {
                              Get.to(() => LoginWidget());
                            },
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Text(
                                'Activar Mi Ubicación',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'NEXA',
                                  color: Color(0xFFFABAFA),
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
          ],
        ),
      ),
    );
  }
}
