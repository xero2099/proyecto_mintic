import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:proyecto_mintic/ui/pages/inicio/inicio_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class FiltroWidget extends StatefulWidget {
  const FiltroWidget({Key key}) : super(key: key);

  @override
  _FiltroWidgetState createState() => _FiltroWidgetState();
}

class _FiltroWidgetState extends State<FiltroWidget> {
  bool checkboxListTileValue1;
  bool checkboxListTileValue2;
  bool checkboxListTileValue3;
  bool checkboxListTileValue4;
  bool checkboxListTileValue5;
  bool checkboxListTileValue6;
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
              alignment: AlignmentDirectional(-0.07, -0.76),
              child: Image.asset(
                'assets/images/BIEN_VENIDO.png',
                width: 250,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.05, 0.2),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 20),
                child: Container(
                  width: 340,
                  height: 560,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.9),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                          child: Text(
                            'Te damos la bienvenida a nuestra gran familia de MATRIX GAMES, esperamos que encuentres en nuestra app una gran familia apasionada por los juegos.\n\nPara poder encontrar tu Clan favorito puedes escoger entre nuestros siguientes filtros :',
                            style: FlutterFlowTheme.bodyText1,
                          ),
                        ),
                      ), //ES LA IMAGEN
                      Align(
                        alignment: AlignmentDirectional(-0.7, -0.15),
                        child: Container(
                          width: 80,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                'https://play-lh.googleusercontent.com/3dRiN0veXPEBKDMVS7wVYPlZB1QxLk20zd2i2ZMZNnUe3QP_hZ6FGJlIjxRGRqIy36Rs',
                                width: 61,
                                height: 61,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'Acción',
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                              CheckboxListTile(
                                value: checkboxListTileValue1 ??= false,
                                onChanged: (newValue) => setState(
                                    () => checkboxListTileValue1 = newValue),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -0.15),
                        child: Container(
                          width: 80,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                'https://play-lh.googleusercontent.com/3dRiN0veXPEBKDMVS7wVYPlZB1QxLk20zd2i2ZMZNnUe3QP_hZ6FGJlIjxRGRqIy36Rs',
                                width: 61,
                                height: 61,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'MOBA',
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                              CheckboxListTile(
                                value: checkboxListTileValue2 ??= false,
                                onChanged: (newValue) => setState(
                                    () => checkboxListTileValue2 = newValue),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.7, -0.15),
                        child: Container(
                          width: 80,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                'https://play-lh.googleusercontent.com/3dRiN0veXPEBKDMVS7wVYPlZB1QxLk20zd2i2ZMZNnUe3QP_hZ6FGJlIjxRGRqIy36Rs',
                                width: 61,
                                height: 61,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'CCG',
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                              CheckboxListTile(
                                value: checkboxListTileValue3 ??= false,
                                onChanged: (newValue) => setState(
                                    () => checkboxListTileValue3 = newValue),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => InicioWidget());
                        },
                        child: Align(
                          alignment: AlignmentDirectional(0.04, 0.9),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/Boton_.png',
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.04, 0.88),
                        child: Text(
                          'Iniciar',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'NEXA',
                            color: Colors.white,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.7, 0.45),
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                'https://play-lh.googleusercontent.com/3dRiN0veXPEBKDMVS7wVYPlZB1QxLk20zd2i2ZMZNnUe3QP_hZ6FGJlIjxRGRqIy36Rs',
                                width: 61,
                                height: 61,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'Shooter',
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                              CheckboxListTile(
                                value: checkboxListTileValue4 ??= false,
                                onChanged: (newValue) => setState(
                                    () => checkboxListTileValue4 = newValue),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.45),
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                'https://play-lh.googleusercontent.com/3dRiN0veXPEBKDMVS7wVYPlZB1QxLk20zd2i2ZMZNnUe3QP_hZ6FGJlIjxRGRqIy36Rs',
                                width: 61,
                                height: 61,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'RPG',
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                              CheckboxListTile(
                                value: checkboxListTileValue5 ??= false,
                                onChanged: (newValue) => setState(
                                    () => checkboxListTileValue5 = newValue),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.7, 0.45),
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                'https://play-lh.googleusercontent.com/3dRiN0veXPEBKDMVS7wVYPlZB1QxLk20zd2i2ZMZNnUe3QP_hZ6FGJlIjxRGRqIy36Rs',
                                width: 61,
                                height: 61,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'Simulación',
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                              CheckboxListTile(
                                value: checkboxListTileValue6 ??= false,
                                onChanged: (newValue) => setState(
                                    () => checkboxListTileValue6 = newValue),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, -0.95),
              child: Image.asset(
                'assets/images/Logo_2.png',
                width: 150,
                height: 50,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
