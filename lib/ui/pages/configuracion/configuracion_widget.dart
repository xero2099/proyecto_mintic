import 'package:get/get.dart';
import 'package:proyecto_mintic/controlador/image_controller.dart';
import 'package:proyecto_mintic/ui/pages/login/login_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              alignment: AlignmentDirectional(0.02, 1.0),
              child: IconButton(
                icon: Image.asset('assets/images/Boton_.png'),
                iconSize: 230,
                onPressed: () {
                  Get.to(() => LoginWidget());
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.02, 0.68),
              child: Text(
                'Cerrar Sesión',
                style: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'NEXA',
                  color: Color(0xFFFFFEFE),
                  useGoogleFonts: false,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.04, 0.54),
              child: Image.asset(
                'assets/images/Boton_.png',
                width: 230,
                height: 35,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.32),
              child: SwitchListTile(
                value: switchListTileValue1 ??= true,
                onChanged: (newValue) => {
                  setState(() => switchListTileValue1 = newValue),
                  image.cambiarImagen()
                },
                title: Text(
                  'Modo Claro',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'NEXA',
                    color: Color(0xFFFFFEFE),
                    useGoogleFonts: false,
                  ),
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.04),
              child: SwitchListTile(
                value: switchListTileValue3 ??= true,
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
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.13),
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
            Align(
              alignment: AlignmentDirectional(0.04, 0.52),
              child: Text(
                'Activar Mi Ubicación',
                style: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'NEXA',
                  color: Color(0xFFFFFEFE),
                  useGoogleFonts: false,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
