import 'package:proyecto_mintic/ui/pages/inicio/inicio_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({Key key}) : super(key: key);

  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0.92),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 5),
                child: Image.asset(
                  'assets/images/BTN_ms.png',
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
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
              alignment: AlignmentDirectional(-0.83, -0.43),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.88, -0.44),
                      child: Image.asset(
                        'assets/images/Perfil.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.15, 0),
                      child: Text(
                        'PUNTAJE\n315',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'NEXA',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.01, -0.88),
              child: Image.asset(
                'assets/images/Perfil.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.01, -0.78),
              child: Image.asset(
                'assets/images/P_chat_inactiovo.png',
                width: 140,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1.02),
              child: Image.asset(
                'assets/images/Botton_Nav_Blanco2.png',
                width: double.infinity,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, -0.98),
              child: Image.asset(
                'assets/images/Logo_2.png',
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.86, -0.46),
              child: Text(
                'MIS\nJUEGOS',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'NEXA',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.85, -0.16),
              child: Container(
                width: 250,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.8, -0.55),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF7E7575),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.75, -0.55),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF7E7575),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.05, -0.55),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF7E7575),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.65),
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0.1),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.25, -0.9),
                        child: Text(
                          'NICK NAME',
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'NEXA',
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.35, -0.7),
                        child: Text(
                          '22/10/2021',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'NEXA',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, -0.9),
                        child: Image.asset(
                          'assets/images/P_chat_inactiovo.png',
                          width: 61,
                          height: 61,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -0.25),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(89, 0, 20, 0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec.',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'NEXA',
                              fontSize: 12,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.25, 0.55),
                        child: Image.asset(
                          'assets/images/COMMENTS.png',
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.3, 0.55),
                        child: Image.asset(
                          'assets/images/STAR.png',
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.1, 0.5),
                        child: Text(
                          '15',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.45, 0.5),
                        child: Text(
                          '3',
                          style: FlutterFlowTheme.bodyText1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                width: double.infinity,
                height: 68,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-91.82, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
                        child: Image.asset(
                          'assets/images/Botton_Nav_Blanco.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(40, 18, 0, 4),
                          child: Image.asset(
                            'assets/images/Home_off.png',
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 18, 0, 0),
                          child: GestureDetector(
                            onTap: () { Get.to(() => InicioWidget());
                            child: Image.asset(
                              'assets/images/chat_off.png',
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(105, 18, 0, 0),
                          child: Image.asset(
                            'assets/images/game_off.png',
                            width: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(40, 18, 0, 0),
                            child: Image.asset(
                              'assets/images/perfik_on.png',
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.93),
              child: Image.asset(
                'assets/images/BTN_ms.png',
                width: 56,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
