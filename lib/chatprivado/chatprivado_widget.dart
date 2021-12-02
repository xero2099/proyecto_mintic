import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatprivadoWidget extends StatefulWidget {
  const ChatprivadoWidget({Key key}) : super(key: key);

  @override
  _ChatprivadoWidgetState createState() => _ChatprivadoWidgetState();
}

class _ChatprivadoWidgetState extends State<ChatprivadoWidget> {
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
              alignment: AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.99),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 665),
                child: Image.asset(
                  'assets/images/cabezal.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.03, -0.9),
              child: Text(
                'Online',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'NEXA',
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  useGoogleFonts: false,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.37, -0.98),
              child: Image.asset(
                'assets/images/P_online.png',
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.28, -1),
              child: Text(
                'Adam Suley',
                style: FlutterFlowTheme.title3,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.8, -0.96),
              child: Image.asset(
                'assets/images/Flecha.png',
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 10),
                child: Container(
                  width: 340,
                  height: 650,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(47),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.63, 0.98),
                          child: Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFE9E9E9),
                              borderRadius: BorderRadius.circular(36),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 8, 15, 5),
                              child: Text(
                                'Mensaje...',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.bodyText1,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.45),
                          child: Image.asset(
                            'assets/images/chat_1_amigo.png',
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.9),
                          child: Image.asset(
                            'assets/images/chat_1_amigo.png',
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.69, -0.68),
                          child: Image.asset(
                            'assets/images/chat_2_respuesta.png',
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.55, 0.98),
                          child: Image.asset(
                            'assets/images/BTN_enviar.png',
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.69, -0.03),
                          child: Image.asset(
                            'assets/images/chat_2_respuesta.png',
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.25),
                          child: Image.asset(
                            'assets/images/chat_1_amigo.png',
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.69, 0.2),
                          child: Image.asset(
                            'assets/images/chat_2_respuesta.png',
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.86, 0.68),
                          child: Image.asset(
                            'assets/images/chat_espera.png',
                            width: 100,
                            height: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.85, 0.98),
                          child: Image.asset(
                            'assets/images/archivo.png',
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.69, 0.44),
                          child: Image.asset(
                            'assets/images/chat_2_respuesta.png',
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
