import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
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
              alignment: AlignmentDirectional(-91.82, 1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
                child: Image.asset(
                  'assets/images/Botton_Nav_Blanco.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
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
              alignment: AlignmentDirectional(-0.8, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Image.asset(
                  'assets/images/Logo_2.png',
                  width: 150,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.75, -0.97),
              child: Image.asset(
                'assets/images/BTN_BUSCAR.png',
                width: 50,
                height: 45,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 60),
                child: Container(
                  width: 340,
                  height: 560,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.96, 1.32),
                          child: Image.asset(
                            'assets/images/Home_on.png',
                            width: 40,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.96, 0.71),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Container(
                              width: 50,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/P_chat_inactiovo.png',
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.96, -0.94),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Container(
                              width: 50,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/P_chat_inactiovo.png',
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.94, -0.35),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://estnn.com/wp-content/uploads/2021/06/codmobilesplash.jpg',
                              width: MediaQuery.of(context).size.width * 0.17,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.43, -0.85),
                          child: Text(
                            '22/11/2021',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'NEXA',
                              fontSize: 8,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.46, -0.52),
                          child: Image.asset(
                            'assets/images/COMMENTS.png',
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.45, -0.32),
                          child: Text(
                            '22/11/2021',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'NEXA',
                              fontSize: 8,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.44, 0.66),
                          child: Text(
                            '22/11/2021',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'NEXA',
                              fontSize: 8,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.43, -0.38),
                          child: Text(
                            'GAME´S',
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'NEXA',
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.49, 1.32),
                          child: Image.asset(
                            'assets/images/chat_off.png',
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.32, -0.52),
                          child: Text(
                            '15',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'NEXA',
                              fontSize: 10,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.39, -0.77),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(83, 0, 30, 0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'NEXA',
                                fontSize: 8,
                                useGoogleFonts: false,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.05, -0.52),
                          child: Image.asset(
                            'assets/images/STAR.png',
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.35, 0.6),
                          child: Text(
                            'NICK NAME',
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'NEXA',
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.22, 0.94),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(83, 0, 30, 0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'NEXA',
                                fontSize: 8,
                                useGoogleFonts: false,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.42, -0.09),
                          child: Image.network(
                            'https://i.imgur.com/7fOjezy.jpeg',
                            width: 220,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.26, 0.3),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(83, 0, 30, 0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'NEXA',
                                fontSize: 8,
                                useGoogleFonts: false,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.34, -0.92),
                          child: Text(
                            'NICK NAME',
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'NEXA',
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.44, 1.35),
                          child: Image.asset(
                            'assets/images/game_off.png',
                            width: MediaQuery.of(context).size.width * 0.14,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.92, 1.34),
                          child: Image.asset(
                            'assets/images/perfil_off.png',
                            width: MediaQuery.of(context).size.width * 0.1,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.43, -0.85),
                          child: Text(
                            '22/11/2021',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'NEXA',
                              fontSize: 8,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.18, -0.52),
                          child: Text(
                            '15',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'NEXA',
                              fontSize: 10,
                              useGoogleFonts: false,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
            )
          ],
        ),
      ),
    );
  }
}
